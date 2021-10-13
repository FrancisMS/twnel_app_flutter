import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:twnel_face_app/app/route/app_routes.dart';
import 'package:twnel_face_app/app/util/error_util.dart';

class MainController extends GetxController {

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
    _askPermission();
  }

  // Check if the device has available cameras
  void _getAvailableCameras() async {
    List<CameraDescription> _cameras = await availableCameras();

    _hasCamera = _cameras.isNotEmpty;

    update();

  }

  void _askPermission() async {
    Map<Permission, PermissionStatus> _permissions = await [Permission.camera, Permission.storage].request();
    if (_permissions[0] == PermissionStatus.granted && _permissions[1] == PermissionStatus.granted) {
      _goToView();
    } else {
      ErrorUtil.popUpPermissionError(() {
        openAppSettings();
      });
    }
  }

  void _goToView() {
    Get.to(AppRoutes.faceDetector);
  }


}