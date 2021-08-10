import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetCupertinoActivityIndicator extends StatefulWidget {
  @override
  _WidgetCupertinoActivityIndicatorState createState() =>
      _WidgetCupertinoActivityIndicatorState();
}

class _WidgetCupertinoActivityIndicatorState
    extends State<WidgetCupertinoActivityIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoActivityIndicator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("丸形進捗インジケータのCupertino版。"),
          CupertinoActivityIndicator(),
          explanationText("サイズ指定可能"),
          CupertinoActivityIndicator(
            radius: 40,
          ),
          explanationText("アニメーションを止めることも可能"),
          CupertinoActivityIndicator(
            animating: false,
          ),
          explanationText("非決定挙動の待機に使われる。（下記は１０秒後に完了と表示される）"),
          FutureBuilder(
            future: Future.delayed(Duration(seconds: 10)).then((value) => "OK"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text("完了");
              }
              return CupertinoActivityIndicator();
            },
          )
        ],
      ),
    );
  }
}
