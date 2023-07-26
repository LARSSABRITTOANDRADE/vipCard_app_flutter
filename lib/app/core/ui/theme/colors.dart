import 'package:flutter/material.dart';

const Color primary = Color.fromARGB(255, 27, 195, 177);
const Color secondary = Color(0xff808080);
const Color warn = Color.fromARGB(255, 255, 160, 28);
const Color danger = Color.fromARGB(255, 231, 29, 53);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color textBlack = Color.fromARGB(255, 1, 22, 39);
const Color green = Color.fromARGB(255, 13, 77, 77);

getColor(String color, {int? alpha}) {
  alpha = alpha != null ? _getColorFromPercent(alpha) : 255;
  switch (color) {
    case 'primary':
      return primary.withAlpha(alpha);
    case 'secondary':
      return secondary.withAlpha(alpha);
    case 'warn':
      return warn.withAlpha(alpha);
    case 'danger':
      return danger.withAlpha(alpha);
    case 'default':
      return Colors.black26;
    default:
  }
}

int _getColorFromPercent(int alpha) {
  return ((255 * alpha) / 100).round();
}