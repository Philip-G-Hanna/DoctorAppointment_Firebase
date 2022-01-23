import 'package:flutter/material.dart';

 class LightColor {
  static const Color background = Color(0XFFfefefe);
  static const Color purple = Color(0xff8873f4);
  static const Color purpleLight = Color(0xff9489f4);
  static const Color purpleExtraLight = Color(0xffb1a5f6);
}
class FontSizes {
  static double scale = 1.2;
  static double get body => 14 * scale;
  static double get bodysiz => 12 * scale;
  static double get size => 28 * scale;
}
class TextStyles {
 static TextStyle get texttStyle => TextStyle(fontSize: FontSizes.size, fontWeight: FontWeight.bold);
 static TextStyle get body => TextStyle(fontSize: FontSizes.body, fontWeight: FontWeight.w300);
static TextStyle get bodySm => body.copyWith(fontSize: FontSizes.bodysiz);
}
extension TextStyleHelpers on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get white => copyWith(color: Colors.white);
}