import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedBuilder extends StatefulWidget {
  @override
  _WidgetAnimatedBuilderState createState() => _WidgetAnimatedBuilderState();
}

class _WidgetAnimatedBuilderState extends State<WidgetAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this)
      ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(begin: 0.0, end: 2 * pi).animate(_controller);
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedBuilder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationRow(
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: animation.value,
                    child: Center(
                        child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.amber,
                      child: Text("回転"),
                    )),
                  );
                },
              ),
              "AnimatedBuilderにTransform.rotateをbuild。"),
        ],
      ),
    );
  }
}
