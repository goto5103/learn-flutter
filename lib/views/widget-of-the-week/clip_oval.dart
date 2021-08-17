import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetClipOval extends StatefulWidget {
  @override
  _WidgetClipOvalState createState() => _WidgetClipOvalState();
}

class _WidgetClipOvalState extends State<WidgetClipOval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("自動で円、楕円に切り取る"),
          ClipOval(
            child: Container(
              color: Colors.amber,
              child: imageH200(),
            ),
          ),
          explanationText("カスタムclipperを与えて自由な円形を作ることもできる"),
          ClipOval(
            clipper: MyClip(),
            child: Container(
              color: Colors.amber,
              child: imageH200(),
            ),
          )
        ],
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 200, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
