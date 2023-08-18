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
        title: Text('тапшырма2'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                width: 240,
                height: 45,
                child: Text(
                  'сан: $syrttankelgenSan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ]),
      ),
    );
  }
}
