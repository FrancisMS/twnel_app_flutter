import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/theme/my_images.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final String desc;
  final Color bgColor;
  final Color textColor;
  final VoidCallback? onTapBack;
  final double height;

  AppBarItem({
    Key? key,
    required this.title,
    required this.desc,
    required this.bgColor,
    required this.textColor,
    this.onTapBack,
    this.height = 0.0,
  }) : preferredSize = Size.fromHeight(height), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: bgColor,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: Get.back,
                    child: Container(
                      padding: MyStyles.edgeInsetsHorizontal24Vertical8,
                      child: Image.asset(MyImages.chevronLeftGrey, height: 24.0, width: 24.0, color: textColor,),
                    ),),
                  Expanded(child: Text(title, style: MyStyles.white18.merge(TextStyle(color: textColor)), overflow: TextOverflow.ellipsis, softWrap: true,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}