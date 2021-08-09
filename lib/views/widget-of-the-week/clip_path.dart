import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetClipPath extends StatefulWidget {
  @override
  _WidgetClipPathState createState() => _WidgetClipPathState();
}

class _WidgetClipPathState extends State<WidgetClipPath> {
  double _h = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipPath"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("パスを使用して独自の形状を指定できる"),
          ClipPath(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.amber,
            ),
            clipper: Clipper(),
          ),
          explanationText(
              "shouldReclipでtrueを返すとgetClipが呼び出されサイズが変更されたときにトリガーされるようになる。"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _h++;
                });
              },
              child: Text("height++")),
          ClipPath(
            child: Container(
              height: _h,
              width: double.infinity,
              color: Colors.indigo,
            ),
            clipper: Clipper2(),
          )
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 3, size.height / 2);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Clipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
