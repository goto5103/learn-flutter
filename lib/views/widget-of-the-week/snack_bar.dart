import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSnackBar extends StatefulWidget {
  @override
  _WidgetSnackBarState createState() => _WidgetSnackBarState();
}

class _WidgetSnackBarState extends State<WidgetSnackBar> {
// ビデオの時とは表示方法が変わっている
//https://flutter.dev/docs/release/breaking-changes/scaffold-messenger
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("メッセージをポップアップする"),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("test")));
              },
              child: Text("スナックバー表示")),
          explanationText("テキスト以外のウィジェットも表示可能"),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.deepOrange,
                    content: Container(
                        color: Colors.amber,
                        child: Row(
                          children: [Icon(Icons.thumb_up), Text("test")],
                        ))));
              },
              child: Text("スナックバー表示")),
          explanationText("ScaffoldとSnackBarを同じbuild関数で作成する場合は、Builderでラップする"),
          Builder(
            builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("test")));
                  },
                  child: Text("スナックバー表示"));
            },
          )
        ],
      ),
    );
  }
}
