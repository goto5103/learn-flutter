import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSemantics extends StatefulWidget {
  @override
  _WidgetSemanticsState createState() => _WidgetSemanticsState();
}

class _WidgetSemanticsState extends State<WidgetSemantics>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Semantics"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText("UI用のウィジェットではなく、ウィジェットツリーにウィジェットの意味を注釈としてつけるウィジェット。検索エンジンやセマンティック分析ソフトウェアによって意味を判断されるために使用される"),
            Semantics(
              child: SizedBox(
                height: 100,
                child: image(),
              ),
              label: "image",
              enabled: true,
              image: true,
              readOnly: true,
            )
          ],
        ),
        );
  }
}
