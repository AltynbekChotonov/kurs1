import 'dart:math' as math;

import 'package:bmi_ui/utils/result_alert.dart';
import 'package:bmi_ui/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';

import 'components/components/calculate_button.dart';
import 'components/components/heigth.dart';
import 'components/components/male_female.dart';
import 'components/components/satus_card.dart';
import 'components/weight_age.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isFemale = false;
  int heigth = 180;
  int weigth = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(AppText.appBarTitle, style: AppTextStyle.titleStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  SatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SatusCard(
              child: Heith(
                height: heigth,
                onChanged: (val) {
                  setState(() {
                    heigth = val.toInt();
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  SatusCard(
                    child: WeigthAge(
                      text: AppText.weigth,
                      value: weigth,
                      add: (c) {
                        setState(() {
                          weigth = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          weigth = c;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  SatusCard(
                    child: WeigthAge(
                      text: AppText.age,
                      value: age,
                      add: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final res = weigth / math.pow(heigth / 100, 2);
          if (res <= 18.4) {
            showMyDialog(context, AppText.thin);
          } else if (res >= 18.5 && res <= 24.9) {
            showMyDialog(context, AppText.normal);
          } else if (res >= 25) {
            showMyDialog(context, AppText.fat);
          } else {
            showMyDialog(context, AppText.sorry);
          }
        },
      ),
    );
  }
}
