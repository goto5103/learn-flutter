import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPlaceholder extends StatefulWidget {
  @override
  _WidgetPlaceholderState createState() => _WidgetPlaceholderState();
}

class _WidgetPlaceholderState extends State<WidgetPlaceholder>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Placeholder"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText("実際のUIが決まるまでの仮UIを配置する"),
            Placeholder(
              fallbackHeight: 50,
            ),
            Container(
              height: 200,
              width: 250,
              child: ListView(
              children: [
                Placeholder(fallbackHeight: 50,
                strokeWidth: 5,)
                ,Placeholder(fallbackHeight: 50,
                color: Colors.blueAccent,)
              ],
            ),
            )

          ],
        ),
        );
  }
}
