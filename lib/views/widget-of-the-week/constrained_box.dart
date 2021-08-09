import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetConstrainedBox extends StatefulWidget {
  @override
  _WidgetConstrainedBoxState createState() => _WidgetConstrainedBoxState();
}

class _WidgetConstrainedBoxState extends State<WidgetConstrainedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("最大幅を指定することで制限をかけることができる"),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 100),
            child: Column(
              children: [
                Text(
                  "test test test test test test test test test",
                  textAlign: TextAlign.center,
                ),
                RaisedButton(child: Text("button"), onPressed: null)
              ],
            ),
          ),
          explanationText("最小高さを指定することで引き延ばすことも可能"),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 200),
            child: RaisedButton(
                child: Text("buttooooooooooooooooooooooooooooon!"),
                onPressed: null),
          ),
        ],
      ),
    );
  }
}
