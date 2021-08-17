import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetMouseRegion extends StatefulWidget {
  @override
  _WidgetMouseRegionState createState() => _WidgetMouseRegionState();
}

class _WidgetMouseRegionState extends State<WidgetMouseRegion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseRegion"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("マウスカーソルを扱うウィジェット。"),
          explanationText("スマホでは必要なく、実装しても正しく機能しない模様"),
          MouseRegion(
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
            cursor: SystemMouseCursors.click,
            onEnter: (event) {
              print("$event");
            },
            onHover: (event) {
              print("$event");
            },
            onExit: (event) {
              print("$event");
            },
          )
        ],
      ),
    );
  }
}
