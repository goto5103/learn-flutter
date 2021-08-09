import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetCupertinoActionSheet extends StatefulWidget {
  @override
  _WidgetCupertinoActionSheetState createState() =>
      _WidgetCupertinoActionSheetState();
}

class _WidgetCupertinoActionSheetState
    extends State<WidgetCupertinoActionSheet> {
  Widget action = CupertinoActionSheet(
    title: Text("title"),
    message: Text("message!"),
    actions: [
      CupertinoActionSheetAction(
        onPressed: () {},
        child: Text("1"),
        isDefaultAction: true,
      ),
      CupertinoActionSheetAction(
        onPressed: () {},
        child: Text("2"),
        isDestructiveAction: true,
      )
    ],
    cancelButton:
        CupertinoActionSheetAction(onPressed: () {}, child: Text("cancel")),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoActionSheet"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("iOSスタイルの下からスライドインするアクションリストを作成（ボタンタップで表示）"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return action;
            },
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
