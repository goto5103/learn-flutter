import 'package:flutter/material.dart';

class WidgetTooltip extends StatefulWidget {
  @override
  _WidgetTooltipState createState() => _WidgetTooltipState();
}

class _WidgetTooltipState extends State<WidgetTooltip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tooltip"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // 長押しで表示
            Tooltip(
              message: "メッセージを表示",
              verticalOffset: 50,
              height: 100,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            // ウィジェットにtooltipプロパティを含んでいるものもある
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: null,
              tooltip: "アイコン",
            ),
            // 【応用】ツールチップのデザインを変える
            // 後に実装
          ],
        ));
  }
}
