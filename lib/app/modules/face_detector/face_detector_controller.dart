import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaceDetectorController extends GetxController {

  bool _hasCamera = false;

  bool get hasCamera => _hasCamera;

  @override
  void onInit() {
    super.onInit();
    _setVariables();
    _getAvailableCameras();

  }

  void _setVariables() async {

  }

  void onTapButton() {
    debugPrint('TAP');
  }

  // Check if the device has available cameras
  void _getAvailableCameras() async {
    List<CameraDescription> _cameras = await availableCameras();

    _hasCamera = _cameras.isNotEmpty;

    update();

  }


}