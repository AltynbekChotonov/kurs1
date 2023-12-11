import 'package:bloc_counter_app/exampl2/home_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail2Page extends StatelessWidget {
  const Detail2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('Detail2Page $state');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterCubit>().decrement(),
        child: const Icon(Icons.remove),
      ),
    );
  }
}
