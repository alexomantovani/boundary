import 'package:boundary/views/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RepaintBoundary',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RepaintBoundary(
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  final count = (state is CounterValue) ? state.count : 0;
                  return Text(
                    'Count: $count',
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Increment());
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 20),
            RepaintBoundary(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'This text will not be redraw',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
