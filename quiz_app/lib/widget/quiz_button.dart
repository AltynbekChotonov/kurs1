import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(
    this.isTrue, {
    Key? key,
  }) : super(key: key);

  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: isTrue ? Color(0xff4cAF52) : Color(0xffF54335),
        ),
        child: Text(
          isTrue ? 'Туура' : "Туура эмес",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
