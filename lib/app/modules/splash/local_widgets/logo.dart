import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:twnel_face_app/app/global_widgets/logo.dart';


class LogoBox extends StatelessWidget {

  const LogoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInUp(
            delay: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
            child: const Logo()),
        ],
      ),
    );
  }

}
