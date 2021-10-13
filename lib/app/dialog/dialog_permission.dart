import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/item_primary_button.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

import '../theme/my_images.dart';
import '../theme/my_strings.dart';

class DialogPermission extends StatelessWidget {

  final VoidCallback onTap;

  const DialogPermission({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: MyColors.white,
                borderRadius: MyStyles.borderRadiusAll5
            ),
            padding: MyStyles.edgeInsetsAll24,
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(MyImages.warning, height: 120.0,),
                    const SizedBox(height: 25.0,),
                    const Padding(
                      padding: MyStyles.edgeInsetsHorizontal40,
                      child: Text(MyStrings.permissionsNotAccepted, style: MyStyles.black24Bold, textAlign: TextAlign.center,),
                    ),
                    const SizedBox(height: 10.0,),
                    const Text(MyStrings.permissionsNotAcceptedSubtitle, style: MyStyles.grey18, textAlign: TextAlign.center,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                ItemPrimaryButton(
                  onTap: () {
                    Get.back();
                  },
                  text: MyStrings.accept
                ),
                const SizedBox(height: 20.0,),
                ItemPrimaryButton(
                  onTap: () {
                    Get.back();
                    onTap();
                  },
                  text: MyStrings.goToSettings
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



}
