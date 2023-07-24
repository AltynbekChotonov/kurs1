import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int san = 0;
  void kosh() {
    setState(() {});
    san++;
  }

  void kemit() {
    setState(() {});
    san--;
    print(san);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('App Title'),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            FlutterLogo(
              size: 150,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                child: Text(
                  '$san',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              //
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: kosh,
                  child: Icon(Icons.add),
                ),
                //SizedBox(width: 45),
                ElevatedButton(
                  onPressed: kemit,
                  child: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
