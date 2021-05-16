import 'dart:math';

import 'package:flutter/material.dart';

class RandomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Routes Demo"),
      ),
      body: Center(
        child:
            Text("${Random().nextInt(20)}", style: TextStyle(fontSize: 30.0)),
      ),
    );
  }
}
