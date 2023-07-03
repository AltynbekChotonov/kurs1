import 'package:flutter/material.dart';
import 'package:sabak_f7/counter.dart';
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
  runApp(const EsepteTirkemesi());
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
      debugShowCheckedModeBanner: false,
      //title bul degen MaterialApp alaturgan bir properti String tibinde
      // theme: bul degen MaterialApp alaturgan bir properti ThemeData tibinde
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      //home: dagy MaterialApp alaturgan bir properti Widget tibinde
      // MyHomePage бул дагы Widget
      // title: бул дагы проперти MyHomePage ке таандык String тибинде
      home: const MyHomePage(title: 'Бүгүн Flutter сабагы'),
    );
  }
}

// required this.title бул MyHomePage тин бир конструктору
// required созсуз бериш керек деген соз
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // final бир жолу маани берп кийин озгортпойт (туруктуу деп койсок болот)
  // String at
  // title озгормонун аты

  final String title;
  // @override Атасындагы метотду жаныртуу
  // State =>
  // createState() бул бир функция  функция экенин кашалары барына карап билдик
  // => бул
  void k() {
    print('kurs1');
    print('kurs1');
    print('kurs1');
    print('kurs1');
  }

  void b() => print('kurs1');

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int бул озгорулмонун тиби бутун сан
  // = бул барабар деген огорулмого маани атайт
  // 0 болсо огорулмонун мааниси
  int _counter = 0;

  void _incrementCounter() {
    // setState бул функциянын аты setState функциясы чакырганда build функциясы кайрадан иштейт
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

class tash {
  // katuu
  // formaluu

  ////Method
  // kulait
  // karmait
}
