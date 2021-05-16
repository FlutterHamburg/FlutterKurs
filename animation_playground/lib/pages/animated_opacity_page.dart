import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double _opacity = 1.0;
  final title = "Flutters";

  void _toggleOpacity() {
    setState(() => _opacity = _opacity == 0 ? 1.0 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 100),
                ), //FlutterLogo(size: 200),
              ),
            ),
            ElevatedButton(
              child: Text('Fade'),
              onPressed: _toggleOpacity,
            ),
          ],
        ),
      ),
    );
  }
}
