import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int san = 0;
  void kosh() {
    setState(() {
      san++;
    });
  }

  void aluu() {
    setState(() {
      san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        //leading: Icon(Icons.add_a_photo),
        title: const Text('App Title'),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 90),
          FlutterLogo(size: 150),
          Text('бул эсепте тиркеме болду'),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
              child: Text(
                'сан:$san',
                style: TextStyle(fontSize: 30, color: Colors.deepOrange),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: kosh,
              child: Icon(Icons.add),
            ),
            SizedBox(width: 45),
            ElevatedButton(
              onPressed: aluu,
              child: Icon(Icons.remove),
            ),
          ]),
        ]),
      ),
    );
  }
}
