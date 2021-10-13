import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class FaceGuideLinesPainter extends CustomPainter {

  FaceGuideLinesPainter(this.face);

  final Face face;
  final Size absoluteImageSize = const Size(300, 500);
  final InputImageRotation rotation = InputImageRotation.Rotation_0deg;

  @override
  void paint(Canvas canvas, Size size) {

    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Colors.red;

    void paintContour(FaceContourType type) {
      final faceContour = face.getContour(type);

      if (faceContour?.positionsList != null) {
        for (Offset point in faceContour!.positionsList) {

          Offset newOffset = Offset(
              point.dx / 3,
              point.dy / 3,
          );

          canvas.drawCircle(
              newOffset,
              1,
              paint);
        }
      }
    }

    paintContour(FaceContourType.face);
    paintContour(FaceContourType.leftEye);
    paintContour(FaceContourType.rightEye);
    paintContour(FaceContourType.upperLipTop);
    paintContour(FaceContourType.upperLipBottom);
    paintContour(FaceContourType.lowerLipTop);
    paintContour(FaceContourType.lowerLipBottom);
    paintContour(FaceContourType.noseBridge);
    paintContour(FaceContourType.noseBottom);
    paintContour(FaceContourType.leftCheek);
    paintContour(FaceContourType.rightCheek);
  }

  @override
  bool shouldRepaint(FaceGuideLinesPainter oldDelegate) {
    return true;
  }
}
