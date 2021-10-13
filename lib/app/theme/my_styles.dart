import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyStyles {

  /* EDGE INSETS */

  static const EdgeInsets edgeInsetsHorizontal10 = EdgeInsets.symmetric(horizontal: 10.0);
  static const EdgeInsets edgeInsetsHorizontal24 = EdgeInsets.symmetric(horizontal: 24.0);
  static const EdgeInsets edgeInsetsHorizontal40 = EdgeInsets.symmetric(horizontal: 40.0);

  static const EdgeInsets edgeInsetsHorizontal24Vertical8 = EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0);

  static const EdgeInsets edgeInsetsAll0 = EdgeInsets.all(0.0);
  static const EdgeInsets edgeInsetsAll8 = EdgeInsets.all(8.0);
  static const EdgeInsets edgeInsetsAll24 = EdgeInsets.all(24.0);

  /* GENERAL */
  
  static const double appBarHeight = 70.0;

  /* BORDER RADIUS */
  
  static const BorderRadius borderRadiusOnlyTop20 = BorderRadius.only(
    topRight: Radius.circular(20.0),
    topLeft: Radius.circular(20.0),
  );

  static const BorderRadius borderRadiusAll10 = BorderRadius.all(Radius.circular(10.0));
  static const BorderRadius borderRadiusAll20 = BorderRadius.all(Radius.circular(20.0));

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

  static const TextStyle black18Bold = TextStyle(
      color: MyColors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.bold
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

  static const TextStyle grey14 = TextStyle(
    color: MyColors.grey,
    fontSize: 14.0,
  );

  static const TextStyle white10 = TextStyle(
    color: MyColors.white,
    fontSize: 10.0,
  );

}
