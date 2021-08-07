import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetContainer extends StatefulWidget {
  @override
  _WidgetContainerState createState() => _WidgetContainerState();
}

class _WidgetContainerState extends State<WidgetContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("背景のスタイリング（色、形、サイズ）や配置調整に使う"),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Text("test"),
          ),
          Container(
            padding: EdgeInsets.all(
                20), // decorationはデフォルトで子の高さにあわせるのでパディングを指定しないとはみ出る可能性あり
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Text("test"),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: Text("test"),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            constraints: BoxConstraints.tightForFinite(height: 100, width: 100),
            child: Text("test"),
          ),
          explanationText("トランスフォームを適用することも可能"),
          Container(
            height: 40,
            width: 40,
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            transform: Matrix4.rotationZ(0.5),
            child: Text("test"),
          ),
          explanationText("ラップしただけでは特に変化はしない"),
          Container(
            child: Text("test"),
          )
        ],
      ),
    );
  }
}
