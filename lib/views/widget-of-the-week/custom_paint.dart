import 'package:flutter/material.dart';

class WidgetCustomPaint extends StatefulWidget {
  @override
  _WidgetCustomPaintState createState() => _WidgetCustomPaintState();
}

class _WidgetCustomPaintState extends State<WidgetCustomPaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPaint"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomPaint(
            size: Size(100, 100),
            painter: Painter(),
          )
        ],
      ),
    );
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    const RadialGradient gradient = RadialGradient(
      center: Alignment(0.0, -0.6),
      radius: 0.2,
      colors: <Color>[Color(0xFFFF8534), Color(0xFF0099FF)],
      stops: <double>[0.4, 1.0],
    );
    canvas.drawRect(
      rect,
      Paint()..shader = gradient.createShader(rect),
    );
  }

  // カスタムペインターが再作成されたときに呼び出される
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
