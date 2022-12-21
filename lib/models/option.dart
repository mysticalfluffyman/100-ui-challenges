import 'package:flutter/material.dart';

///
class Option {
  ///
  const Option({
    required this.title,
    this.child,
    this.onTap,
  });

  ///
  final String title;

  ///
  final Widget? child;

  ///
  final GestureTapCallback? onTap;
}
