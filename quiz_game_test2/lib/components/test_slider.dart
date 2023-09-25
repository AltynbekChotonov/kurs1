import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: 4.3,
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
          trackShape: RectangularSliderTrackShape(),
        ),
        child: Slider(
          min: 0,
          max: 10,
          value: 4,
          activeColor: AppColors.green,
          inactiveColor: AppColors.inactive,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
