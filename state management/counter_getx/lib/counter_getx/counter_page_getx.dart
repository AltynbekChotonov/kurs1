import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterGetxPage extends StatelessWidget {
  CounterGetxPage({super.key});
  final Controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('CounterGetxPage'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Obx(() {
                // print('Obx ishtedi');
                return Text(
                  '${Controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              })
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: Controller.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: Controller.decrement,
              tooltip: 'Increment',
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
