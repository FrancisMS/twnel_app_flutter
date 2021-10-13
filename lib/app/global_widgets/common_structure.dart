import 'package:flutter/material.dart';
import 'package:twnel_face_app/app/theme/my_colors.dart';
import 'package:twnel_face_app/app/theme/my_styles.dart';

import 'item_app_bar.dart';

class CommonStructure extends StatelessWidget {

  final String appBarTitle;
  final String appBarDesc;
  final Widget child;
  final bool isScrollable;
  final EdgeInsets padding;
  final bool hasAppBar;
  final double heightAppBar;
  final Color backgroundColor;
  final Color appBarBackgroundColor;
  final Color appBarTextColor;
  final VoidCallback? onTapBack;

  const CommonStructure({
    Key? key,
    required this.child,
    this.appBarTitle = '',
    this.appBarDesc = '',
    this.isScrollable = true,
    this.padding = MyStyles.edgeInsetsHorizontal24,
    this.hasAppBar = true,
    this.heightAppBar = MyStyles.appBarHeight,
    this.backgroundColor = Colors.white,
    this.appBarBackgroundColor = MyColors.primary,
    this.appBarTextColor = MyColors.white,
    this.onTapBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: hasAppBar
            ? AppBarItem(
                title: appBarTitle,
                desc: appBarDesc,
                height: heightAppBar,
                bgColor: appBarBackgroundColor,
                onTapBack: onTapBack,
                textColor: appBarTextColor,
              )
            : null,
        body: isScrollable
            ? SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Container(
                  padding: padding,
                  child: child
                ),
              )
            : Container(
                padding: padding,
                child: child,
              ),
      ),
    );
  }

}