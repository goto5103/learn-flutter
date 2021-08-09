import 'package:flutter/material.dart';

class WidgetClipRRect extends StatefulWidget {
  @override
  _WidgetClipRRectState createState() => _WidgetClipRRectState();
}

class _WidgetClipRRectState extends State<WidgetClipRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ClipRRect"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  // よく見るとなめらかではない
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                  // 左右に
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  )),
            ),
          ],
        ));
  }
}
