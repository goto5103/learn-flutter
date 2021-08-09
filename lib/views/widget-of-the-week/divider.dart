import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDivider extends StatefulWidget {
  @override
  _WidgetDividerState createState() => _WidgetDividerState();
}

class _WidgetDividerState extends State<WidgetDivider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("境界線を作成する"),
          Divider(),
          explanationText("高さ、太さ、色、インデントのカスタムが可能"),
          Divider(
            height: 100,
            thickness: 10,
            color: Colors.deepOrange,
            indent: 10,
            endIndent: 20,
          ),
          explanationText("MaterialAppの中でDividerThemeDataを設定すると統一できる"),
        ],
      ),
    );
  }
}
