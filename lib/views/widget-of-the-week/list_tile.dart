import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetListTile extends StatefulWidget {
  @override
  _WidgetListTileState createState() => _WidgetListTileState();
}

class _WidgetListTileState extends State<WidgetListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("マテリアルデザインの仕様でリスト項目を生成する"),
          ListTile(
            leading: image(),
            title: Text("title"),
            subtitle: Text("サブタイトル"),
            isThreeLine: true, // 全角文字だとうまく反応しない？
            dense: true,
            trailing: Icon(Icons.menu),
          ),
          explanationText("タップや長押し時の動作をつけることもできる"),
          ListTile(
            leading: image(),
            title: Text("title"),
            subtitle: Text("サブタイトル"),
            onTap: () => showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text("tapした"),
                  );
                }),
            onLongPress: () => showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text("長押しした"),
                  );
                }),
            trailing: Icon(Icons.menu),
          ),
          explanationText("無効状態にもできる"),
          ListTile(
            leading: image(),
            title: Text("title"),
            enabled: false,
            trailing: Icon(Icons.menu),
          ),
          explanationText("選択状態にもできる"),
          ListTile(
            leading: image(),
            title: Text("title"),
            selected: true,
            trailing: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
