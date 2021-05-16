import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Page',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
      ),
      home: MyHomePage(title: 'Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: _decrementCounter,
                  icon: Icon(Icons.remove),
                  color: Colors.black,
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: _incrementCounter,
                  icon: Icon(Icons.add),
                  color: Colors.black,
                  iconSize: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
