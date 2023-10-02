import 'package:flutter/material.dart';
import 'package:quiz_game_test_ful/continents/app_color.dart';

import '../components/test_page_app_bar_title.dart';
import '../components/test_slider.dart';
import '../components/variants.dart';
import '../models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});

  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int KataJooptor = 0;

  // void check(bool isTrue) {
  //   if (isTrue == true) {
  //     tuuraJooptor++;
  //   } else {
  //     KataJooptor++;
  //   }

  //   setState(() {
  //     index++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        foregroundColor: AppColors.black,
        title: TestPageAppBarTitle(
          KataJooptor: KataJooptor,
          tuuraJooptor: tuuraJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TestSlider(),
          Text(
            widget.suroo[index].text,
            style: TextStyle(fontSize: 30, height: 1.5),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                  '/images/capitals/${widget.suroo[index].image}.jpeg'),
            ),
          ),
          Variants(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) async {
              if (index + 1 == widget.suroo.length) {
                await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Сиздин тест жыйынтыгыныз!'),
                    content: Text('туура $tuuraJooptor\nката$KataJooptor'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          index = 0;
                          KataJooptor = 0;
                          tuuraJooptor = 0;
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  KataJooptor++;
                }

                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
