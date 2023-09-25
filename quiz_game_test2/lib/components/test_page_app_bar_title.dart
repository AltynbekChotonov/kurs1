import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Text('3'),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.favorite,
                      color: AppColors.red,
                    );
                  }),
            ),

            /// SizedBox(width: 5),
            const Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
