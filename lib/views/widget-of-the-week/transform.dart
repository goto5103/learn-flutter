import 'dart:math';

import 'package:flutter/material.dart';

class WidgetTransform extends StatefulWidget {
  @override
  _WidgetTransformState createState() => _WidgetTransformState();
}

class _WidgetTransformState extends State<WidgetTransform> {
  Widget _explanationRow(Widget widget, String explanation) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(height: 100, width: 100, color: Colors.grey, child: widget),
          Flexible(
              child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(explanation),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _explanationRow(
              Transform.rotate(
                angle: pi / 12.0,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              "rotate:中心を軸に回転するウィジェットを作成"),
          _explanationRow(
              Transform.scale(
                scale: 0.5,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              "scale:均一にスケーリングするウィジェットを作成"),
          _explanationRow(
              Transform.translate(
                offset: Offset(50, -50),
                child: Container(
                  color: Colors.amber,
                ),
              ),
              "translate:XY方向に移動するウィジェットを作成"),
          _explanationRow(
              Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3)..rotateZ(pi / 12.0),
                child: Container(
                  color: Colors.amber,
                  child: const Text('テスト'),
                ),
              ),
              "transformプロパティを使用して自在に作成したWidget（skew）")
        ],
      ),
    );
  }
}
