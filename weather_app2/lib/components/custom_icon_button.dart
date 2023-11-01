import 'package:flutter/material.dart';
import 'package:weather_app2/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 50,
      color: AppColors.white,
      icon: Icon(icon),
    );
  }
}
