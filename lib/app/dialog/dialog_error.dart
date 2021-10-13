import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/item_primary_button.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_images.dart';
import 'package:twnel_face_app/app/theme/my_strings.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

class DialogError extends StatelessWidget {

  const DialogError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: MyStyles.edgeInsetsAll10,
        child: Wrap(
          children: [
            Container(
              padding: MyStyles.edgeInsetsAll24,
              decoration: const BoxDecoration(
                  color: MyColors.white,
                  borderRadius: MyStyles.borderRadiusAll5
              ),
              child: Column(
                children: [
                  GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: Get.back,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(MyImages.close, height: 24.0, width: 24.0,),
                        ],
                      )),
                  Image.asset(MyImages.warning, height: 80.0, width: 80.0,),
                  const SizedBox(height: 25.0,),
                  const Text(MyStrings.oops, style: MyStyles.black24Bold, textAlign: TextAlign.center),
                  const SizedBox(height: 15.0,),
                  const Text(MyStrings.tryAgain, style: MyStyles.grey18, textAlign: TextAlign.center,),
                  const SizedBox(height: 40.0,),
                  Container(
                    margin: MyStyles.edgeInsetsHorizontal16,
                    child: ItemPrimaryButton(
                      text: MyStrings.tryAgain,
                      onTap: Get.back,
                      bgColor: MyColors.red,
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}