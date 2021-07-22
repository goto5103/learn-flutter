import 'package:flutter/material.dart';

class WidgetFadeTransition extends StatefulWidget {
  @override
  _WidgetFadeTransitionState createState() => _WidgetFadeTransitionState();
}

class _WidgetFadeTransitionState extends State<WidgetFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  @override
  initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
        appBar: AppBar(
          title: Text("FadeTransition"),
          centerTitle: true,
        ),
        body: FadeTransition(
          opacity: _animation,
          child: Text("フェード"),
        ));
  }
}
