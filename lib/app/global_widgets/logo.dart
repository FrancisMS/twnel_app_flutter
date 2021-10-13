import 'package:flutter/material.dart';
import 'package:twnel_face_app/app/theme/my_images.dart';

class Logo extends StatelessWidget {

  final double height;
  final double width;

  const Logo({Key? key, this.height = 220.0, this.width = 220.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(MyImages.logoComplete, width: width, height: height,);
  }

}