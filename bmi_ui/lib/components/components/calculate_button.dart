import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        color: AppColor.buttonColor,
        child: const Center(
            child: Text(
          AppText.calculate,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        )),
      ),
    );
  }
}
