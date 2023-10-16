// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmi_ui/utils/app_colors.dart';

import 'components/components/calculate_button.dart';
import 'components/components/satus_card.dart';
import 'utils/app_text.dart';

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
          AppText.appBarTitle,
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Expanded(
              child: Row(
                children: [
                  SatusCard(
                    icon: Icons.male,
                    text: AppText.male,
                  ),
                  SizedBox(width: 20),
                  SatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Card(
                color: AppColor.cardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppText.heigth,
                      style: TextStyle(fontSize: 28, color: AppColor.greyText),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                              fontSize: 65,
                              color: AppColor.whiteText,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          AppText.cm,
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColor.greyText,
                              height: 3.7),
                        ),
                      ],
                    ),
                    Slider(
                      value: 180,
                      max: 300,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  SatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  SatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
