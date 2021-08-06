import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedOpacity extends StatefulWidget {
  @override
  _WidgetAnimatedOpacityState createState() => _WidgetAnimatedOpacityState();
}

class _WidgetAnimatedOpacityState extends State<WidgetAnimatedOpacity> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("FadeTransitionを検討"),
          AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(milliseconds: 1000),
            child: SizedBox(
              height: 200,
              child: image(),
            ),
          ),
          explanationText(
              "curveを指定すると推移率を管理できる。他のアニメーションと併せて明示的に透明度を管理したい場合は、FadeTransitionを検討"),
          AnimatedOpacity(
            curve: Curves.bounceIn,
            opacity: _opacity,
            duration: Duration(milliseconds: 1000),
            child: SizedBox(
              height: 200,
              child: image(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacity = _opacity == 0.5 ? 1 : 0.5;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
