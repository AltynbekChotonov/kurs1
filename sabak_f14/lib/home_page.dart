// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class HamePage extends StatefulWidget {
  const HamePage({super.key});

  @override
  State<HamePage> createState() => _HamePageState();
}

class _HamePageState extends State<HamePage> {
  int dice1 = 1;
  int dice2 = 2;

  void change() {
    dice1 = Random().nextInt(7);
    print('dice1 =$dice1');
    dice2 = Random().nextInt(7);
    print('dice2 =$dice2');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
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
              Diceimage(
                dice1,
              ),
              Diceimage(
                dice2,
              ),
            ],
          ),
        ));
  }
}

class Diceimage extends StatefulWidget {
  Diceimage(
    this.index, {
    Key? key,
  }) : super(key: key);

  int index;
  //final void Function()? onTap;

  @override
  State<Diceimage> createState() => _DiceimageState();
}

class _DiceimageState extends State<Diceimage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        setState(() {
          widget.index = Random().nextInt(6) + 1;
          // widget.onTap;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset('/dice${widget.index == 0 ? 1 : widget.index}.png'),
      ),
    ));
  }
}
