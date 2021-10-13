import 'dart:io';

import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class PictureTakenController extends GetxController {

  late File _picture;
  int? _faces;

  File get picture => _picture;
  int? get faces => _faces;

  @override
  void onInit() {
    super.onInit();
    _setVariables();
  }

  void _setVariables() async {
    _picture = Get.arguments;

    _processImage(InputImage.fromFile(_picture));

  }

  Future _processImage(inputImage) async {
    FaceDetector _faceDetector = GoogleMlKit.vision.faceDetector(const FaceDetectorOptions(
      enableContours: true,
      enableClassification: true,
    ));

    List<Face> _facesList = await _faceDetector.processImage(inputImage);
    _faces = _facesList.length;

    update();
  }


}