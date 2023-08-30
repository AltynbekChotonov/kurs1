// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class Hame2Page extends StatefulWidget {
  const Hame2Page({super.key});

  @override
  State<Hame2Page> createState() => _Hame2PageState();
}

class _Hame2PageState extends State<Hame2Page> {
  int dice1 = 1;
  int dice2 = 2;

  void change() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;

      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFF5353),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffFF5353),
          title: const Text(
            'ТАПШЫРМА - 05',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          elevation: 0,
        ),
        body: Center(
          child: Row(
            children: [
              Diceimage2(
                index: dice1 == 0 ? 1 : dice1,
                onTap: change,
              ),
              Diceimage2(
                index: dice2 == 0 ? 1 : dice2,
                onTap: change,
              ),
            ],
          ),
        ));
  }
}

class Diceimage2 extends StatelessWidget {
  Diceimage2({
    super.key,
    this.onTap,
    required this.index,
  });

  final int index;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset('/dice$index.png'),
      ),
    ));
  }
}
