import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedWidget extends StatefulWidget {
  @override
  _WidgetAnimatedWidgetState createState() => _WidgetAnimatedWidgetState();
}

class _WidgetAnimatedWidgetState extends State<WidgetAnimatedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> animation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _animationController.addListener(() {
      setState(() {});
    });
    animation = Tween<double>(begin: 0, end: 15).animate(_animationController);

    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedWidget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ウィジェットに独自のアニメーションをつける"),
          ButtonTransition(
            width: animation,
          ),
        ],
      ),
    );
  }
}

class ButtonTransition extends AnimatedWidget {
  // 更新を知らせる
  const ButtonTransition({width}) : super(listenable: width);

  // アニメーションを追加するウィジェットの中でlistenableを有効にする
  Animation<double> get width => listenable;

  // アニメーションを適用するウィジェット
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          print("${width.value}");
        },
        child: Text("tap me"),
        style: OutlinedButton.styleFrom(
            side: BorderSide(width: width.value, color: Colors.amber)));
  }
}
