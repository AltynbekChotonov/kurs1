import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../continents/app_color.dart';
import '../continents/app_text.dart';

List continents = <String>[
  'africa',
  'asia',
  'australia',
  'europe',
  'north_america',
  'south_america'
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Text(
          AppText.gameTitle,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Text(index.toString()),
                        Expanded(
                          child: SvgPicture.asset(
                              '/icons/continents/${continents[index]}.svg'),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
