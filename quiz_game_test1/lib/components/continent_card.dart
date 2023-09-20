// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:quiz_game_test1/models/continent.dart';

class ContinentsCard extends StatelessWidget {
  const ContinentsCard({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final Continent item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              item.name,
              style: const TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  '/icons/continents/${item.icon}.svg',
                  color: item.color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
