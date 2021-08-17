import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetRotatedBox extends StatefulWidget {
  @override
  _WidgetRotatedBoxState createState() => _WidgetRotatedBoxState();
}

class _WidgetRotatedBoxState extends State<WidgetRotatedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RotatedBox"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          explanationText("ウィジェットを回転させて回転後のサイズをレイアウトに反映させる"),
          Row(
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Container(
                  width: 100,
                  height: 20,
                  color: Colors.amber,
                  child: Text("hello"),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.grey,
                child: Text("hello"),
              )
            ],
          ),
          explanationText(
              "Tranform.rotateは回転していない状態のサイズを利用してレイアウトを描画する。従ってアニメーションが不要で恒久的に回転させておく場合、RotatedBoxを使用するといい。"),
          Row(children: [
            Transform.rotate(
              angle: -0.5 * pi,
              child: Container(
                width: 100,
                height: 20,
                color: Colors.amber,
                child: Text("hello"),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.grey,
              child: Text("hello"),
            )
          ])
        ],
      ),
    );
  }
}
