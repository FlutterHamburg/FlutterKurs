import 'package:flutter/material.dart';
import 'package:routes/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Routes Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RouteGenerator.randomPage),
          child: Text("Random"),
        ),
      ),
    );
  }
}
