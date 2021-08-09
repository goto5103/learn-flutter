import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetFractionallySizedBox extends StatefulWidget {
  @override
  _WidgetFractionallySizedBoxState createState() =>
      _WidgetFractionallySizedBoxState();
}

class _WidgetFractionallySizedBoxState
    extends State<WidgetFractionallySizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FractionallySizedBox"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText("利用可能なサイズに対する比率でサイズを指定する。"),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: ElevatedButton(
                      child: Text("幅0.8"),
                      onPressed: null,
                    ),
                  ),
                  Flexible(
                      child: FractionallySizedBox(
                    heightFactor: 0.5,
                  )),
                  ElevatedButton(
                    child: Text("余白の調整にも使用可能（上のボタンとの間に高さ0.5の余白を設置）"),
                    onPressed: null,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
