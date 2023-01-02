import 'package:flutter/material.dart';

///
class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(final Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 2, height / 1.2, width, height);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
