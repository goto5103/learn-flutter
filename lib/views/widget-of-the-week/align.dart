import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAlign extends StatefulWidget {
  @override
  _WidgetAlignState createState() => _WidgetAlignState();
}

class _WidgetAlignState extends State<WidgetAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationRowHorizontal(
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "bottomRight",
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
              ),
              "Alignmentクラスの定数を使用すると簡単に位置を指定できる。（例ではbottomRight）"),
          explanationRowHorizontal(
              Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "(-1,0)",
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
              ),
              "XY軸をそれぞれ-1から1の範囲で指定することもできる。（bottomRightなどの定数も内部的には数値を指定している）"),
          explanationRowHorizontal(
              Stack(
                children: [
                  Container(
                    height: 50,
                    color: Colors.amber,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Hello."),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Hello."),
                  )
                ],
              ),
              "Stackの中の配置にも利用できる")
        ],
      ),
    );
  }
}
