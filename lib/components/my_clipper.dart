// import 'package:flutter/material.dart';

// class _MyClipper extends CustomClipper<Path> {
//   final double space;

//   _MyClipper(this.space);

//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final halfWidth = size.width / 2;
//     final halfSpace = space / 2;
//     final curve = space / 6;
//     final height = halfSpace / 1.4;
//     path.lineTo(halfWidth - halfSpace, 0);
//     path.cubicTo(halfWidth - halfSpace, 0, halfWidth - halfSpace + curve,
//         height, halfWidth, height);

//     path.cubicTo(halfWidth, height, halfWidth + halfSpace - curve, height,
//         halfWidth + halfSpace, 0);

//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
// }
