import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSelectableText extends StatefulWidget {
  @override
  _WidgetSelectableTextState createState() => _WidgetSelectableTextState();
}

class _WidgetSelectableTextState extends State<WidgetSelectableText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SelectableText"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("選択可能なテキストを描画する"),
          SelectableText(
            "testtesttesttesttesttesttesttesttesttesttesttest",
            style: TextStyle(color: Colors.amber),
          ),
          explanationText("選択開始位置の表示"),
          SelectableText(
            "testtesttesttesttesttesttesttesttesttesttesttest",
            style: TextStyle(color: Colors.amber),
            showCursor: true,
            cursorColor: Colors.green,
            cursorWidth: 5,
            cursorRadius: Radius.circular(5),
          ),
          explanationText("アクションの変更"),
          SelectableText(
            "testtesttesttesttesttesttesttesttesttesttesttest",
            toolbarOptions: ToolbarOptions(
              copy: false,
            ),
          ),
          explanationText("テキストが最大行では表示できない場合スクロールで選択範囲を広げることができる"),
          SelectableText(
            "testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest",
            maxLines: 1,
            scrollPhysics: ClampingScrollPhysics(),
          ),
          explanationText("リッチテキストの使用も可能"),
          SelectableText.rich(TextSpan(
              text: "test",
              style: TextStyle(color: Colors.amberAccent),
              children: [
                TextSpan(text: "test", style: TextStyle(color: Colors.blue))
              ]))
        ],
      ),
    );
  }
}
