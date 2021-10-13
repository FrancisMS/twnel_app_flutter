import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:path_provider/path_provider.dart';

import 'painters/face_guidelines.dart';

class FaceDetectorController extends GetxController {

  final GlobalKey _globalKey = GlobalKey();

  CameraDescription? _camera;
  CameraController? _controller;
  double zoomLevel = 0.0;
  double minZoomLevel = 0.0;
  double maxZoomLevel = 0.0;
  bool _isBusy = false;
  late FaceDetector _faceDetector;
  CustomPaint? _customPaint;
  bool _isLoading = true;
  List<Face> _faces = [];

  GlobalKey get globalKey => _globalKey;

  CameraDescription? get camera => _camera;
  CameraController? get controller => _controller;
  bool get isLoading => _isLoading;
  CustomPaint? get customPaint => _customPaint;


  @override
  void onReady() async {
    super.onReady();
    _setVariables();
  }

  void _setVariables() async {

    List<CameraDescription> _cameras = await availableCameras();

    for (CameraDescription model in _cameras) {
      if (model.lensDirection == CameraLensDirection.front) {
        _camera = model;
        break;
      }
    }

    _faceDetector = GoogleMlKit.vision.faceDetector(const FaceDetectorOptions(
      enableContours: true,
      enableClassification: true,
    ));

    _startLiveFeed();

  }

  Future<File> writeToFile(ByteData data) async {
    final buffer = data.buffer;
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    var filePath = tempPath + '/file_temp.tmp';
    return File(filePath).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }

  Future _startLiveFeed() async {

    if (_controller != null) await _controller!.dispose();

    _controller = CameraController(
      _camera!,
      ResolutionPreset.high,
      enableAudio: false,
    );

    try {
      await _controller!.initialize();
      try {
        RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
        Timer(const Duration(seconds: 0), () async {
          ui.Image image = await boundary.toImage(pixelRatio: 3.0);
          ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
          File file = await writeToFile(byteData!);
          final inputImage = InputImage.fromFile(file);
          _processImage(inputImage);

        });


      } catch (e) {
        debugPrint('Error RenderRepaintBoundary ${e.toString()}');
      }

    } on CameraException catch (e) {
      debugPrint('Error initialize ${e.toString()}');
    }


  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');
    final file = File('${(await getTemporaryDirectory()).path}/image.png');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    return file;
  }

  Future _processImage(inputImage) async {
    if (_isBusy) return;
    _isBusy = true;
    _faces = await _faceDetector.processImage(inputImage);

    final painter = FaceGuideLinesPainter(
        _faces.first,);
    _customPaint = CustomPaint(painter: painter);
    _isLoading = false;
    _isBusy = false;
    update();
  }

  void onPressedTakePicture() async {
    try {
      var xFile = await _controller!.takePicture();
      Get.back(result: xFile.path);
    } catch (e) {
      debugPrint(e.toString() + ' Error $onPressedTakePicture');
    }
  }

  Future _stopLiveFeed() async {
    await _controller?.dispose();
    _controller = null;
  }

  @override
  void onClose() {
    _stopLiveFeed();
    super.onClose();
  }


}