import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '${context.watch<Counter>().counter}',
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => context.read<Counter>().decrementCounter(),
                  icon: Icon(Icons.remove),
                  color: Colors.black,
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () => context.read<Counter>().incrementCounter(),
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