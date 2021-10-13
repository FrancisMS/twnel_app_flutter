import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/dialog/dialog_permission.dart';

class ErrorUtil {

  static void popUpPermissionError(VoidCallback onTap) {
    Get.bottomSheet(DialogPermission(
      onTap: onTap,
    ), isScrollControlled: true,);
  }

}