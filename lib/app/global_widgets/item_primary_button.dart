import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

class ItemPrimaryButton extends StatelessWidget {

  final String text;
  final TextStyle style;
  final Color bgColor;
  final Color borderColor;
  final VoidCallback? onTap;
  final double height;
  final double? width;
  final BorderRadius borderRadius;

  const ItemPrimaryButton({
    Key? key,
    this.text = '',
    this.onTap,
    this.style = MyStyles.primary16,
    this.bgColor = MyColors.white,
    this.borderColor = Colors.transparent,
    this.height = 40.0,
    this.width,
    this.borderRadius = MyStyles.borderRadiusAll10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        width: width == null ? null : Get.width,
        height: height,
        padding: MyStyles.edgeInsetsHorizontal10,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: borderRadius,
          color: bgColor,
        ),
        child: Center(child: Text(text, style: style, textAlign: TextAlign.center,)),
      ),
    );
  }
}

