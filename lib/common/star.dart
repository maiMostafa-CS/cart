import 'package:flutter/material.dart';
import 'package:task3/util/colors.dart';

Widget star() {
  return Icon(
    Icons.star_rate,
    color: ThemeColors.amber,
    size: 20,
  );
}

Widget blackStar() {
  return Icon(Icons.star_rate, color: ThemeColors.gray, size: 20);
}
