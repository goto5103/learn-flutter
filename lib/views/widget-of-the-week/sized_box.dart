import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSizedBox extends StatefulWidget {
  @override
  _WidgetSizedBoxState createState() => _WidgetSizedBoxState();
}

class _WidgetSizedBoxState extends State<WidgetSizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(10),
            child: Text("SizedBoxでサイズ指定した20*50のボタン"),
          ),
          SizedBox(
            height: 20,
            width: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber)),
              child: Center(
                child: Text("button"),
              ),
              onPressed: null,
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(10),
            child: Text("SizedBoxを子なしで指定した場合そのサイズ分のスペースを埋める"),
          ),
          Column(
            children: [
              Text("widget1"),
              SizedBox(
                height: 100,
              ),
              Text("widget1")
            ],
          ),
          Divider(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(10),
            child: Text(
                "expandプロパティを使うと親の許容範囲の最大のボックスを作る（縦横double.infinity指定と同じ）"),
          ),
          SizedBox(
              width: double.infinity,
              height: 200,
              child: SizedBox.expand(
                child: Container(
                  color: Colors.amber,
                ),
              ))
        ],
      ),
    );
  }
}
