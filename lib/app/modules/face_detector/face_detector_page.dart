import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/common_structure.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

import 'face_detector_controller.dart';
import 'local_widgets/camera_box.dart';

class FaceDetectorPage extends StatelessWidget {

  const FaceDetectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FaceDetectorController>(
      builder: (_) => const CommonStructure(
        hasAppBar: false,
        isScrollable: false,
        padding: MyStyles.edgeInsetsAll0,
        backgroundColor: MyColors.black,
        child: CameraBox()
      )
    );
  }

}
