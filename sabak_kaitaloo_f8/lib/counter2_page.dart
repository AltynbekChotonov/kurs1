import 'package:flutter/material.dart';

class Counter2Page extends StatelessWidget {
  const Counter2Page({Key? achkych, required this.syrttankelgenSan})
      : super(key: achkych);

  final int syrttankelgenSan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Тапшырма 02'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black12,
            ),
            width: 250,
            height: 50,
            child: Text(
              'сан:$syrttankelgenSan',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30),
            ),
          )
        ])));
  }
}
