import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle({
    Key? key,
    required this.tuuraJooptor,
    required this.KataJooptor,
  }) : super(key: key);

  final int tuuraJooptor;
  final int KataJooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Text(
                  '$KataJooptor',
                  style: const TextStyle(color: AppColors.red, fontSize: 15),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('32', style: TextStyle(fontSize: 18)),
                ),
                Text(
                  '$tuuraJooptor',
                  style: const TextStyle(color: AppColors.green, fontSize: 15),
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
