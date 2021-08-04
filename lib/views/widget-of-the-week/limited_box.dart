import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetLimitedBox extends StatefulWidget {
  @override
  _WidgetLimitedBoxState createState() => _WidgetLimitedBoxState();
}

class _WidgetLimitedBoxState extends State<WidgetLimitedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            explanationText("親がサイズをしていない場合、LimitedBoxのサイズ指定が適用される"),
            Container(
              child: LimitedBox(
                maxHeight: 20,
                maxWidth: 50,
                child: Container(
                  height: 20,
                  width: 50,
                  color: Colors.amber,
                ),
              ),
            ),
            explanationText("親がサイズをしている場合、LimitedBoxのサイズ指定は無視される"),
            Container(
              height: 200,
              width: 200,
              child: LimitedBox(
                maxHeight: 20,
                maxWidth: 30,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
            explanationText(
                "ListViewでは親がコンテナの高さを指定しない場合、子リストの高さは0になる。子リストをLimitedBoxでラップするとサイズが指定されて表示されるようになる"),
            Expanded(
              child: ListView(
                children: [
                  LimitedBox(
                    maxHeight: 50,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  LimitedBox(
                    maxHeight: 50,
                    child: Container(
                      color: Colors.cyanAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
