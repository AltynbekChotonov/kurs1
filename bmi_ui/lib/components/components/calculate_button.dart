import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
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
          'CALCULATE',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        )),
      ),
    );
  }
}
