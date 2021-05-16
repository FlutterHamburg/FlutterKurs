import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage();

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.watch<CounterBloc>();
    //BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
              onPressed: () => counterBloc.add(CounterEvent.increment),
              child: const Text(
                "+1",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                ),
              ),
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) => Text(
                "$count",
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            FlatButton(
              onPressed: () => counterBloc.add(CounterEvent.decrement),
              child: const Text(
                "-1",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
