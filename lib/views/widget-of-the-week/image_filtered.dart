import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetImageFiltered extends StatefulWidget {
  @override
  _WidgetImageFilteredState createState() => _WidgetImageFilteredState();
}

class _WidgetImageFilteredState extends State<WidgetImageFiltered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageFiltered"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText(
              "ウィジェット（画像だけではない）にエフェクトをかける。（BackdropFiltrerはウィジェット自体だけでなく、その配下のウィジェットすべてにフィルターを適用できるが効率が劣る）"),
          explanationText("ブラー：XY軸にぼかしをかける"),
          ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10),
              child: SizedBox(
                height: 100,
                child: image(),
              )),
          explanationText("マトリクス：行列を使った変換"),
          ImageFiltered(
              imageFilter: ImageFilter.matrix(
                Matrix4.rotationZ(0.2).storage,
              ),
              child: Container(
                color: Colors.amber,
                height: 100,
                child: image(),
              )),
          ImageFiltered(
              imageFilter: ImageFilter.matrix(
                Matrix4.skewY(0.1 * pi).storage,
              ),
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
                child: image(),
              )),
        ],
      ),
    );
  }
}
