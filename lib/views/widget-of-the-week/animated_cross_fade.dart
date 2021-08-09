import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedCrossFade extends StatefulWidget {
  @override
  _WidgetAnimatedCrossFadeState createState() =>
      _WidgetAnimatedCrossFadeState();
}

class _WidgetAnimatedCrossFadeState extends State<WidgetAnimatedCrossFade> {
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedCrossFade"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("２つの子をクロスフェードしながら表示するアニメーション"),
          AnimatedCrossFade(
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 1000),
            firstChild: Container(
              height: 100,
              color: Colors.amber,
            ),
            secondChild: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          explanationText("２つの子のサイズが違っていてもきれいに切り替わる"),
          AnimatedCrossFade(
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 1000),
            firstChild: Container(
              height: 10,
              width: 100,
              color: Colors.amber,
            ),
            secondChild: Container(
              height: 100,
              width: 10,
              color: Colors.red,
            ),
          ),
          explanationText("フェード時の飛びを無くす場合は、layoutBuilderを与える"),
          AnimatedCrossFade(
            firstChild: Container(
              height: 10,
              width: 100,
              color: Colors.amber,
            ),
            secondChild: Container(
              height: 100,
              width: 10,
              color: Colors.red,
            ),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 1000),
            layoutBuilder:
                (topChild, topChildKey, bottomChild, bottomChildKey) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(key: bottomChildKey, top: 0, child: bottomChild),
                  Positioned(key: topChildKey, child: topChild)
                ],
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
