import 'package:flutter/material.dart';

class WidgetFadeTransition extends StatefulWidget {
  @override
  _WidgetFadeTransitionState createState() => _WidgetFadeTransitionState();
}

class _WidgetFadeTransitionState extends State<WidgetFadeTransition>
    with SingleTickerProviderStateMixin {
  // AnimationControllerを作成し、durationを設定
  AnimationController _controller;

  // Animationを作成し、透過度の開始と終了を設定、AnimationController経由でアニメートする
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
    // アニメーションの開始
    _controller.forward();
    return Scaffold(
        appBar: AppBar(
          title: Text("FadeTransition"),
          centerTitle: true,
        ),
        // FadeTransitionウィジェット
        body: FadeTransition(
          opacity: _animation,
          child: Text("フェード"),
        ));
  }
}
