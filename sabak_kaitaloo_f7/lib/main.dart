import 'package:flutter/material.dart';

import 'counter_App.dart';
// import  бир беттен экинчи бетке алып келген маалыматты таанытыш учун колдонулат
// void -- деген main функиясы эчнерсе кайтарбайт деп тушунобуз
// main --  дартта башталгыч функциянын аты
// () ---- main дин бир функция экенин билдирет
// {} ---- main функиясынын денеси ичинде эмнелер болсо аткарылат
// runApp --- бул бир функция  тиркемени иштетурган функция
// const ==- бул constant -> бир гана жолу курулат (туруктуу)
// MeninTirkemem  -- бир class тын аты
// class -- dart  учун жаны тушунук (Object --->  бул дартта баардык нерсе Object)

void main() {
  //b();
  runApp(const MeninTirkemem());
}

// a() {
//   print('kurs2');
// }

//  b() {
//   a();
// }

// extends -- бул мурас беруу деп койот  (генеикалык мурас) Parent class тан  chaid class ка мурас берет
// StatelessWidget -- > StatefulWidget -->  кийин айтып берем
// super -- деген проперти

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});
// override --... атасындагф функцияны кайра
//Widget ----... бул Flutter деги баардык нерсе дегенбиз
  String ayt(String maani) {
    return 'maani';
  }
//Widget -==... build  методунун кайтаруу тиби
// build =-= ...функциянын аты
// BuildContext context -=... build функциясы алатурган параметр болот (BuildContext ->Flutter adress)
// return --=-... build функциясынын кайтаруусу
// title -=-- MaterialApp  алатурган бир проперти кайсыл типте --->  string тибинде
// theme -=-= MaterialApp  алатурган бир проперти кайсыл типте --->  ThemeData тибинде
// home  =-=- дагы   MaterialApp тын бир пропертиси кайсыл типте ---> Widget тибинде
//  property == бул бир class тын касиети
// MyHomePage bir Widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        //useMaterial3: true,
      ),
      home: const CounterPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
// override -==- атасындагы методту жаныртуу
  @override
// State =>
// createState() =>
// => ------------------->
// void k(){
//   print('kurs1');
//   print('kurs1');
//   print('kurs1');
//   print('kurs1');
//   print('kurs1');
// }
// void k()=> print('kurs1');

  State<MyHomePage> createState() => _MyHomePageState();
}

//  int озгормонун тиби бутун сан
// _counter озгормонун аты
// = озгормого маани атайт
//0 =-=- озгормонун мааниси
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
              'Бугун Flutter ге отуп жатабыз',
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
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}

class tash {
  // property
  //katuu
  //formaluu

// method
  // kulait
  //karmait
}
