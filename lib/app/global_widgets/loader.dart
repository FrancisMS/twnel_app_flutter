import 'package:flutter/material.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';

class Loader extends StatelessWidget {

  final double size;

  const Loader({Key? key, this.size = 50.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(MyColors.primary),));
  }

}