import 'package:flutter/material.dart';
import 'package:quiz_game_test2/continents/app_color.dart';

import '../components/test_page_app_bar_title.dart';
import '../components/test_slider.dart';
import '../components/variants.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        foregroundColor: AppColors.black,
        title: const TestPageAppBarTitle(),
        elevation: 0,
      ),
      body: Column(
        children: [
          const TestSlider(),
          const Text(
            'Bankok',
            style: TextStyle(fontSize: 30, height: 1.5),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('/images/capitals/bishkek.jpeg'),
            ),
          ),
          const Variants(),
        ],
      ),
    );
  }
}
