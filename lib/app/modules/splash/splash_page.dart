import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twnel_face_app/app/global_widgets/common_structure.dart';

import 'local_widgets/logo.dart';
import 'splash_controller.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => const CommonStructure(
        hasAppBar: false,
        isScrollable: false,
        child: LogoBox()
      )
    );
  }

}
