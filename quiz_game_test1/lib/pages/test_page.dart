import 'package:flutter/material.dart';
import 'package:quiz_game_test1/continents/app_color.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.tips_and_updates,
                      color: AppColors.yellow,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('32'),
                    ),
                    Icon(
                      Icons.add_circle,
                      color: AppColors.green,
                    ),
                  ],
                ),
              ),
            ),
            Text('3'),
            Row(
              children: [
                SizedBox(
                  width: 70,
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.favorite,
                          color: AppColors.red,
                        );
                      }),
                ),

                /// SizedBox(width: 5),
                Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
        elevation: 0,
      ),
    );
  }
}
