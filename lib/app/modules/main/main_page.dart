import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/common_structure.dart';
import 'package:twnel_face_app/app/global_widgets/item_primary_button.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_images.dart';
import 'package:twnel_face_app/app/theme/my_strings.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';
import 'package:twnel_face_app/app/util/app_helpers.dart';

import 'main_controller.dart';

class MainPage extends StatelessWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (_) => CommonStructure(
          hasAppBar: false,
          backgroundColor: MyColors.primary,
          child: Column(
            children: [
              const SizedBox(height: 24.0,),
              Image.asset(MyImages.home),
              const SizedBox(height: 24.0,),
              const Text(MyStrings.welcomeTo, style: MyStyles.white24Bold,),
              Text(_.hasCamera ? MyStrings.pleaseRegisterYourFace : MyStrings.sorryNoCameraFound, style: MyStyles.white18,),
              const SizedBox(height: 24.0,),
              if (_.hasCamera) ItemPrimaryButton(
                text: MyStrings.registerFace,
                onTap: _.onTapButton,
              ),
              const SizedBox(height: 24.0,),
              const Text(AppHelpers.version, style: MyStyles.white10,),
              const SizedBox(height: 24.0,),
            ],
          )
      )
    );
  }

}
