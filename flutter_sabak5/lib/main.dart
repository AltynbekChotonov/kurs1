import 'package:flutter/material.dart';
// import: деген сыртан башка жактагы маалыматты бир жерге алып келүү.
// void: main  функциясын эчнерсе кайтарып бербейт.
// main: dart да башталгыч функциянын аты
// () main дин бир функция экенин билдирет
// {} main функциясынын денеси( ичинде эмнелер болсо ошолор аткарылат)
// runApp бул функция тиркеме иштететурган функция material.dart тан келет.
// const бул constant -> бир гана жолу курулут (туруктуу)
// MeninTirkemem бул  класстын аты StatelessWidget тен Widget тен келген бир класс

void main() {
  //a('kurs1');
  runApp(const MeninTirkemem());
}

String ayt(String maani) {
  return 'maani';
}

/*a(String maani) {
  print(maani);
}

void b() {
  a();
}
*/
// class  dart учун жаны тушунук (object)
// extends  бул мурас беруу деп аталат атадан балага генетикалык мурас беруу
//  Parent class tan child class ka muras beret
// StatelessWidget мунун кийин айтып берем
// key бул  бир Widget ке ачкыч бергибиз келсе беребиз.
//super  деген атасына бериле турган пропертини беруу учун (child тан Parent берет)
class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});
// @override (переопределить) атасындагы функцияны кайра жазуу
// Widget деген бул флаттерге тиешелуу бардык нерсе дегенбиз
// build  деген Widget тини методунун кайтаруу тиби build бир функциянын аты
// build(BuildContext context) flutter degi address
// MaterialApp 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Бүгүн Flutter сабагы'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Бүгүн Flutter ге өтүп жатабыз:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
