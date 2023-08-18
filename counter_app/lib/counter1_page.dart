import 'package:counter_app/counter2_page.dart';
import 'package:flutter/material.dart';

class Counter1Page extends StatefulWidget {
  const Counter1Page({super.key});

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  int ozgoruuchuSan = 0;
  void koshuu() {
    ozgoruuchuSan++;
    setState(() {});
    print(ozgoruuchuSan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text('тапшырма1'),
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
                'сан: $ozgoruuchuSan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  ozgoruuchuSan--;
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 40),
              ElevatedButton(
                onPressed: koshuu,
                child: const Icon(Icons.add),
              ),
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Counter2Page(
                syrttankelgenSan: ozgoruuchuSan,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
