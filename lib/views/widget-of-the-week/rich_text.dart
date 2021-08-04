import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetRichText extends StatefulWidget {
  @override
  _WidgetRichTextState createState() => _WidgetRichTextState();
}

class _WidgetRichTextState extends State<WidgetRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("全体のスタイルを指定しつつ、個別にスタイルを指定することができる"),
          RichText(
              text: TextSpan(style: TextStyle(color: Colors.blue), children: [
            TextSpan(text: "hello", style: TextStyle(fontSize: 20)),
            TextSpan(
                text: "world", style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text: "!!", style: TextStyle(backgroundColor: Colors.amber))
          ]))
        ],
      ),
    );
  }
}
