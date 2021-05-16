import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simpson Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simpson Quotes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List quote = [
    {
      "name": "Bart Simpson",
      "quote": "Eat my shorts.",
      "imagePath": "assets/images/bart.png"
    },
    {
      "name": "Homer Simpson",
      "quote":
          "Stupidity got us into this mess, and stupidity will get us out.",
      "imagePath": "assets/images/homer.jpg"
    }
  ];
  int rng = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  quote[rng]['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    quote[rng]['quote'],
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Image.asset(
                  quote[rng]['imagePath'],
                  height: 300.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (rng == 0) {
                            rng = 1;
                            print(rng);
                          } else {
                            rng = 0;
                          }
                        });
                        print(rng);
                      },
                      child: Text('Load new Quote')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
