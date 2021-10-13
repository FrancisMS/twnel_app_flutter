import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyStyles {

  /* EDGE INSETS */

  static const EdgeInsets edgeInsetsHorizontal3 = EdgeInsets.symmetric(horizontal: 3.0);
  static const EdgeInsets edgeInsetsHorizontal10 = EdgeInsets.symmetric(horizontal: 10.0);
  static const EdgeInsets edgeInsetsHorizontal15 = EdgeInsets.symmetric(horizontal: 15.0);
  static const EdgeInsets edgeInsetsHorizontal16 = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets edgeInsetsHorizontal20 = EdgeInsets.symmetric(horizontal: 20.0);
  static const EdgeInsets edgeInsetsHorizontal24 = EdgeInsets.symmetric(horizontal: 24.0);
  static const EdgeInsets edgeInsetsHorizontal30 = EdgeInsets.symmetric(horizontal: 30.0);
  static const EdgeInsets edgeInsetsHorizontal40 = EdgeInsets.symmetric(horizontal: 40.0);
  static const EdgeInsets edgeInsetsHorizontal60 = EdgeInsets.symmetric(horizontal: 60.0);
  static const EdgeInsets edgeInsetsHorizontal80 = EdgeInsets.symmetric(horizontal: 80.0);
  static const EdgeInsets edgeInsetsHorizontal64 = EdgeInsets.symmetric(horizontal: 64.0);
  static const EdgeInsets edgeInsetsVertical10 = EdgeInsets.symmetric(vertical: 10.0);
  static const EdgeInsets edgeInsetsVertical20 = EdgeInsets.symmetric(vertical: 20.0);
  static const EdgeInsets edgeInsetsVertical24 = EdgeInsets.symmetric(vertical: 24.0);
  static const EdgeInsets edgeInsetsVertical40 = EdgeInsets.symmetric(vertical: 40.0);

  static const EdgeInsets edgeInsetsHorizontal15Vertical40 = EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0);
  static const EdgeInsets edgeInsetsHorizontal8Vertical10 = EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0);
  static const EdgeInsets edgeInsetsHorizontal15Vertical24 = EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0);
  static const EdgeInsets edgeInsetsHorizontal15Vertical8 = EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0);
  static const EdgeInsets edgeInsetsHorizontal20Vertical10 = EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);
  static const EdgeInsets edgeInsetsHorizontal24Vertical8 = EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0);
  static const EdgeInsets edgeInsetsHorizontal10Vertical5 = EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);
  static const EdgeInsets edgeInsetsHorizontal24Vertical16 = EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0);
  static const EdgeInsets edgeInsetsHorizontal24Vertical20 = EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0);
  static const EdgeInsets edgeInsetsHorizontal24Vertical40 = EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0);
  static const EdgeInsets edgeInsetsHorizontal30Vertical10 = EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0);
  static const EdgeInsets edgeInsetsHorizontal30Vertical15 = EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0);
  static const EdgeInsets edgeInsetsHorizontal40Vertical15 = EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0);

  static const EdgeInsets edgeInsetsAll0 = EdgeInsets.all(0.0);
  static const EdgeInsets edgeInsetsAll5 = EdgeInsets.all(5.0);
  static const EdgeInsets edgeInsetsAll8 = EdgeInsets.all(8.0);
  static const EdgeInsets edgeInsetsAll10 = EdgeInsets.all(10.0);
  static const EdgeInsets edgeInsetsAll16 = EdgeInsets.all(16.0);
  static const EdgeInsets edgeInsetsAll20 = EdgeInsets.all(20.0);
  static const EdgeInsets edgeInsetsAll24 = EdgeInsets.all(24.0);
  static const EdgeInsets edgeInsetsAll30 = EdgeInsets.all(30.0);
  static const EdgeInsets edgeInsetsAll40 = EdgeInsets.all(40.0);

  static const EdgeInsets edgeInsetsLRTB24noTop = EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0);
  static const EdgeInsets edgeInsetsLRTB15noRight = EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0);

  static const EdgeInsets edgeInsetsBottom2 = EdgeInsets.only(bottom: 2.0);
  static const EdgeInsets edgeInsetsBottom10 = EdgeInsets.only(bottom: 10.0);

  static const EdgeInsets edgeInsetsRight10 = EdgeInsets.only(right: 10.0);
  static const EdgeInsets edgeInsetsLeft20 = EdgeInsets.only(left: 20.0);

  static const EdgeInsets edgeInsetsTop20 = EdgeInsets.only(top: 20.0);

  /* GENERAL */
  
  static const double appBarHeight = 70.0;
  static const double bottomSize = 16.0;
  static const double topSize = 16.0;
  static const double spaceBetweenImages = 5.0;

  /* BORDER RADIUS */
  
  static const Radius radius10 = Radius.circular(10.0);
  static const Radius radius20 = Radius.circular(20.0);
  static const BorderRadius borderRadiusOnlyTop20 = BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0),
  );

  /* FONT FAMILY */

  static const BorderRadius borderRadiusAll2 = BorderRadius.all(Radius.circular(2.0));
  static const BorderRadius borderRadiusAll5 = BorderRadius.all(Radius.circular(5.0));
  static const BorderRadius borderRadiusAll6 = BorderRadius.all(Radius.circular(6.0));
  static const BorderRadius borderRadiusAll10 = BorderRadius.all(Radius.circular(10.0));
  static const BorderRadius borderRadiusAll11 = BorderRadius.all(Radius.circular(11.0));
  static const BorderRadius borderRadiusAll20 = BorderRadius.all(Radius.circular(20.0));
  static const BorderRadius borderRadiusAll100 = BorderRadius.all(Radius.circular(100.0));

  /* TEXT STYLE */

  //color_size_weight_decoration_font

  static const TextStyle black24Bold = TextStyle(
    color: MyColors.black,
    fontSize: 24.0,
    fontWeight: FontWeight.bold
  );

  static const TextStyle white24Bold = TextStyle(
    color: MyColors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.bold
  );

  static const TextStyle primary24 = TextStyle(
    color: MyColors.primary,
    fontSize: 24.0,
  );

  static const TextStyle white18 = TextStyle(
    color: MyColors.white,
    fontSize: 18.0,
  );

  static const TextStyle primary18 = TextStyle(
    color: MyColors.primary,
    fontSize: 18.0,
  );

  static const TextStyle grey18 = TextStyle(
    color: MyColors.grey,
    fontSize: 18.0,
  );

  static const TextStyle black18 = TextStyle(
    color: MyColors.black,
    fontSize: 18.0,
  );

  static const TextStyle primary16 = TextStyle(
    color: MyColors.primary,
    fontSize: 16.0,
  );

  static const TextStyle white16 = TextStyle(
    color: MyColors.white,
    fontSize: 16.0,
  );

}
