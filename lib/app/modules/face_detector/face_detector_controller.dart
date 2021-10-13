import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:twnel_face_app/app/modules/face_detector/painters/face_detector_painter.dart';

class FaceDetectorController extends GetxController {

  List<CameraDescription> _cameras = [];
  int _cameraIndex = 0;
  CameraController? _controller;
  double zoomLevel = 0.0;
  double minZoomLevel = 0.0;
  double maxZoomLevel = 0.0;
  bool _isBusy = false;
  late FaceDetector _faceDetector;
  CustomPaint? _customPaint;
  bool _isLoading = true;

  List<CameraDescription> get cameras => _cameras;
  CameraController? get controller => _controller;
  bool get isLoading => _isLoading;
  CustomPaint? get customPaint => _customPaint;

  @override
  void onInit() {
    super.onInit();
    _setVariables();

  }

  void _setVariables() async {
    _cameras = await availableCameras();
    _faceDetector = GoogleMlKit.vision.faceDetector(const FaceDetectorOptions(
      enableContours: true,
      enableClassification: true,
    ));

    _startLiveFeed();
  }

  Future _startLiveFeed() async {
    _isLoading = true;

    final camera = _cameras[_cameraIndex];

    if (_controller != null) await _controller!.dispose();

    _controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
    );

    _controller!.addListener(() {
      update();
      if (_controller!.value.hasError) {
        debugPrint('Camera error ${_controller!.value.errorDescription}');
      }
    });

    try {
      await _controller!.initialize();
      _isLoading = false;
      _controller?.startImageStream(_processCameraImage);
      update();

    } on CameraException catch (e) {
      debugPrint('initialize Error ${e.toString()}');
    }


  }

  Future _processCameraImage(CameraImage image) async {
    final WriteBuffer allBytes = WriteBuffer();
    for (Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize = Size(image.width.toDouble(), image.height.toDouble());

    final camera = _cameras[_cameraIndex];
    final imageRotation = InputImageRotationMethods.fromRawValue(camera.sensorOrientation) ?? InputImageRotation.Rotation_0deg;

    final inputImageFormat = InputImageFormatMethods.fromRawValue(image.format.raw) ?? InputImageFormat.NV21;

    final planeData = image.planes.map((Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    final inputImage = InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);

    _processImage(inputImage);
  }

  Future _processImage(inputImage) async {
    if (_isBusy) return;
    _isBusy = true;
    final faces = await _faceDetector.processImage(inputImage);

    debugPrint('Found ${faces.length} faces');
    if (faces.isNotEmpty) {
      if (inputImage.inputImageData?.size != null &&
          inputImage.inputImageData?.imageRotation != null) {
        final painter = FaceDetectorPainter(
            faces,
            inputImage.inputImageData!.size,
            inputImage.inputImageData!.imageRotation);
        _customPaint = CustomPaint(size: inputImage.inputImageData!.size, painter: painter);
      } else {
        _customPaint = null;
      }
    } else {
      _customPaint = null;
    }
    _isBusy = false;
    update();
  }

  void onPressedTakePicture() async {
    try {

      var xFile = await _controller!.takePicture();

      debugPrint('xFILE $xFile');

      //processImage(xFile);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future switchLiveCamera() async {
    _cameraIndex = (_cameraIndex == 0) ? 1 : 0;
    _startLiveFeed();
  }

  Future _stopLiveFeed() async {
    await _controller?.stopImageStream();
    await _controller?.dispose();
    _controller = null;
  }

  @override
  void onClose() {
    _stopLiveFeed();
    super.onClose();
  }


}