// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app1/widget/quiz_button.dart';
import 'package:quiz_app1/widget/result_icon.dart';

import 'model/quiz_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(true);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        index = 0;
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Сиз бул тесттен'),
                content: Text(
                    'Туура жооп ${tuuraJooptor.length}/Ката жооп ${kataJooptor.length}'),
              );
            });
        jooptor.clear();
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ТАПШЫРМА -07',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButtonbu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              tuuraButtonbu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int i) {
                    return jooptor[i]
                        ? const ResultIcon(true)
                        : const ResultIcon(false);
                  }),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
