import 'package:flutter/material.dart';
import 'dart:math';

class HangManPainter extends CustomPainter {
  Paint _paint;
  var a = [true, true, true, true, true];
  HangManPainter() {
    _paint = Paint()
      ..color = Color(0xffaecbf7)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 9;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (a[0])
      canvas.drawLine(
        Offset(25.0, 20.0),
        Offset(25.0, 180.0),
        _paint,
      );
    if (a[1])
      canvas.drawLine(
        Offset(15.0, 25.0),
        Offset(150.0, 25.0),
        _paint,
      );
    if (a[2]) {
      canvas.drawLine(
        Offset(100.0, 20.0),
        Offset(100.0, 50.0),
        _paint,
      );
      var topCircle = Offset(100.0, 70.0);
      canvas.drawCircle(topCircle, 20.0, _paint);
    }

    var topCircle = Offset(100.0, 70.0);
    if (a[2]) canvas.drawCircle(topCircle, 20.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
