import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class IncrementNotifier extends ChangeNotifier {
  int _value = 0;
  print() {
    _value.toString();
  }

  int get value => _value;

  void increment() {
    _value += 1;
    notifyListeners();
  }

  void decrement() {
    _value -= 1;
    notifyListeners();
  }
}

print() {}

final incrementProvider = ChangeNotifierProvider((ref) => IncrementNotifier());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Riverpod Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Consumer(
                builder: (context, watch, child) {
                  final incrementNotifier = watch(incrementProvider);
                  return Text(
                    incrementNotifier.value.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read(incrementProvider).decrement();
                    },
                    icon: Icon(Icons.remove),
                    color: Colors.black,
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      context.read(incrementProvider).increment();
                    },
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    iconSize: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
