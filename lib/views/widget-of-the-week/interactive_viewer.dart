import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetInteractiveViewer extends StatefulWidget {
  @override
  _WidgetInteractiveViewerState createState() =>
      _WidgetInteractiveViewerState();
}

class _WidgetInteractiveViewerState extends State<WidgetInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InteractiveViewer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("サイズが大きなウィジェットを拡大縮小やパンをできるように配置する"),
          InteractiveViewer(
              child: Container(
            width: 1000,
            height: 100,
            color: Colors.deepPurple,
            child: Image.network(
                "https://pics.prcm.jp/8a3d1be3c886a/76347916/jpeg/76347916.jpeg"),
          )),
          InteractiveViewer(
            boundaryMargin: EdgeInsets.all(10),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurple,
                child: Image.network(
                    "https://pics.prcm.jp/8a3d1be3c886a/76347916/jpeg/76347916.jpeg"),
              )),
        ],
      ),
    );
  }
}
