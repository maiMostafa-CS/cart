import 'package:flutter/material.dart';

AppBar customAppBar(leadingIcon, actionsIcon, bgColor, color) {
  return AppBar(
    backgroundColor: bgColor,
    elevation: 0.0,
    leading: Icon(
      leadingIcon,
      color: color,
      size: 25,
    ),
    actions: [
      Icon(
        actionsIcon,
        color: color,
        size: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
      )
    ],
  );
}
