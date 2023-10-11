import 'package:bmi_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'components/components/calculate_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Text('data')),
          Expanded(child: Text('ordo')),
          Expanded(child: Text('kut')),
          CalculateButton(),
        ],
      ),
    );
  }
}
