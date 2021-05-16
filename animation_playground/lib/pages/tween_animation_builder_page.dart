import 'package:flutter/material.dart';

class TweenAnimationBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimationBuilder'),
      ),
      body: Center(
        child: HSVColorSelector(),
      ),
    );
  }
}

class HSVColorSelector extends StatefulWidget {
  @override
  _HSVColorSelectorState createState() => _HSVColorSelectorState();
}

class _HSVColorSelectorState extends State<HSVColorSelector> {
  double _hue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: _hue),
          duration: Duration(milliseconds: 500),
          builder: (context, hue, child) {
            final hsvColor = HSVColor.fromAHSV(1.0, hue, 1.0, 1.0);
            return Container(
              width: 300,
              height: 300,
              color: hsvColor.toColor(),
            );
          },
        ),
        SizedBox(height: 48.0),
        Container(
          height: 30.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                for (var h = 0; h <= 360; h++)
                  HSVColor.fromAHSV(1.0, h.toDouble(), 1.0, 1.0).toColor()
              ],
              stops: [
                for (var h = 0; h <= 360; h++) h.toDouble() / 360,
              ],
            ),
          ),
        ),
        Slider.adaptive(
          value: _hue,
          min: 0,
          max: 360,
          onChanged: (value) => setState(() => _hue = value),
        ),
      ],
    );
  }
}
