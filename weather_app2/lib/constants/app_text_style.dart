import 'package:flutter/material.dart';
import 'package:weather_app2/constants/app_colors.dart';

class AppTextStyle {
  static const AppBar = TextStyle(color: AppColors.black, fontSize: 20);
  static const body1 = TextStyle(color: AppColors.white, fontSize: 95);
  static body2(double size) => TextStyle(
      color: AppColors.white, fontSize: size, fontWeight: FontWeight.w300);
}
