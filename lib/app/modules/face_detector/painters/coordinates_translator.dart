import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

double translateX(double x, InputImageRotation rotation, Size size, Size absoluteImageSize) {
  switch (rotation) {
    case InputImageRotation.Rotation_90deg:
      return x * size.width / absoluteImageSize.height;
    case InputImageRotation.Rotation_270deg:
      return size.width - x * size.height / absoluteImageSize.width;
    default:
      debugPrint('absoluteImageSize.width ${absoluteImageSize.width}');
      return x * size.width / 400;
  }
}

double translateY(
    double y, InputImageRotation rotation, Size size, Size absoluteImageSize) {
  switch (rotation) {
    case InputImageRotation.Rotation_90deg:
    case InputImageRotation.Rotation_270deg:
      return y * size.width / absoluteImageSize.height;
    default:
      debugPrint('absoluteImageSize.height ${absoluteImageSize.height}');
      return y * size.height / 500;
  }
}
