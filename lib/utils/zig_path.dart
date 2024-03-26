import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6142105, size.height * 0.9385027);
    path_0.cubicTo(size.width * 0.5308421, size.height * 0.8893048,
        size.width * 0.1700000, size.height * 0.9590000, 0, size.height);
    path_0.lineTo(0, size.height * 0.05080209);
    path_0.cubicTo(
        size.width * 0.08042105,
        size.height * 0.001604203,
        size.width * 0.1668421,
        size.height * -0.007777273,
        size.width * -0.005263158,
        size.height * 1.016043);
    path_0.cubicTo(
        size.width * 0.001052616,
        size.height * 0.0,
        size.width * 0.0,
        size.height * 0.0,
        size.width * 0.0,
        size.height * 0.0);
    path_0.cubicTo(
        size.width * 0.2557895,
        size.height * 0.03208551,
        size.width * 0.3727368,
        size.height * 0.1652406,
        size.width * 0.6005263,
        size.height * 0.07754011);
    path_0.cubicTo(
        size.width * 0.8152632,
        size.height * -0.09572193,
        size.width * 0.9563158,
        size.height * 0.1176471,
        size.width,
        size.height * 0.2459893);
    path_0.lineTo(size.width, size.height * 0.7219251);
    path_0.cubicTo(
        size.width * 0.9061400,
        size.height * 0.8146150,
        size.width * 0.6975789,
        size.height * 0.9877005,
        size.width * 0.6142105,
        size.height * 0.9385027);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffE7FAFE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class TopcsPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 1.000048);
    path_0.lineTo(0, size.height * 0.05650108);
    path_0.cubicTo(
        size.width * 0.4427083,
        size.height * -0.1047892,
        size.width * 0.3020833,
        size.height * 0.3253188,
        size.width * 0.5828125,
        size.height * 0.07800645);
    path_0.cubicTo(
        size.width * 0.8073958,
        size.height * -0.1198425,
        size.width * 0.9461802,
        size.height * 0.1048887,
        size.width * 0.9875000,
        size.height * 0.2419855);
    path_0.cubicTo(
        size.width * 0.9965281,
        size.height * 0.3468237,
        size.width * 1.009167,
        size.height * 0.5855323,
        size.width * 0.9875000,
        size.height * 0.7016613);
    path_0.cubicTo(
        size.width * 0.9604167,
        size.height * 0.8468226,
        size.width * 0.6416667,
        size.height * 1.000048,
        size.width * 0.5447917,
        size.height * 0.9382204);
    path_0.cubicTo(
        size.width * 0.4672917,
        size.height * 0.8887581,
        size.width * 0.1493052,
        size.height * 0.9588333,
        0,
        size.height * 1.000048);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffE5FDFD).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
