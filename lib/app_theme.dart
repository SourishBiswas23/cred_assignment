import 'package:flutter/material.dart';

class AppTheme {
  static const backgroundColor = Color(0xFF111419);
  static const iconColor = Color(0xFF9C9FA4);
  static const iconBackground = Color(0xFF1C1F24);
  static const buttonColor = Color(0xFF3B479B);
  static const firstViewColor = Color(0xFF161922);
  static const secondViewColor = Color(0xFF1A1C29);
  static const thirdViewColor = Color(0xFF272A3D);
  static const viewTextColor = Color(0xFF8D9AAA);
  static const viewBorderRadius = 20.0;
  static const buttonBorderRadius = 20.0;
  static const expandedViewTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: viewTextColor,
  );
  static const expandedViewSubTitleStyle = TextStyle(
    fontSize: 15,
    color: viewTextColor,
  );
  static const collapsedViewTitleStyle = TextStyle(
    fontSize: 10,
    color: viewTextColor,
  );
  static const collapsedViewSubTitleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: viewTextColor,
  );
}
