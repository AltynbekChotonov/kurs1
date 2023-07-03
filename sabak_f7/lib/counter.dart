import 'package:flutter/material.dart';

class EsepteTirkemesi extends StatelessWidget {
  const EsepteTirkemesi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EsepteTirkemesi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const EseptePage(),
    );
  }
}

class EseptePage extends StatefulWidget {
  const EseptePage({super.key});

  @override
  State<EseptePage> createState() => _EseptePageState();
}

class _EseptePageState extends State<EseptePage> {
  int san = 0;
  void koshu() {
    san++;
    print(san);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text('Esepte ekrany'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Бүгүн Flutter ге өтүп жатабыз:'),
            Text(
              '$san',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          koshu();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
