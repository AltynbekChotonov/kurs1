import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class SatusCard extends StatelessWidget {
  const SatusCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(color: AppColor.greyText, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
