import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/common_structure.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_strings.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

import 'picture_taken_controller.dart';

class PictureTakenPage extends StatelessWidget {

  const PictureTakenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PictureTakenController>(
      builder: (_) => CommonStructure(
        appBarTitle: '',
          backgroundColor: MyColors.primary,
          child: Column(
            children: [
              const SizedBox(height: 24.0,),
              Image.file(
                _.picture,
                width: Get.width,
                height: 500.0,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 24.0,),
              if (_.faces != null) Text(_.faces == 0 ? MyStrings.faceNotDetected : MyStrings.faceDetected, style: MyStyles.white24Bold,),
              const SizedBox(height: 24.0,),
            ],
          )
      )
    );
  }

}
