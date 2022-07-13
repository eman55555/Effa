import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  Color color;
  MyPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    var path = Path();
    final double startPoint = size.width * 0.2;
    final double rheight = 30;
    path.moveTo(startPoint, rheight);
    path.lineTo(startPoint + 20, 0);
    path.lineTo(startPoint + 40, rheight);
    path.moveTo(0, rheight);
    path.lineTo(startPoint, rheight);
    path.moveTo(startPoint + 40, rheight);
    path.lineTo(size.width, rheight);
    path.lineTo(size.width, size.height);
    path.moveTo(0, rheight);
    path.lineTo(0, size.height);
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}