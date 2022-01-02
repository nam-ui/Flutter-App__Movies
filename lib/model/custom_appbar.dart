import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;
  final Color color;

  CustomAppBar(
      {required this.child, this.height = kToolbarHeight, required this.color})
      : super(
          preferredSize: Size.fromHeight(height),
          child: Container(
            color: color,
            child: child,
          ),
        );

  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        padding: EdgeInsets.only(bottom: 6),
        color: color,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
