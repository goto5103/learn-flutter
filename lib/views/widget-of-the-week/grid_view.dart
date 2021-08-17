import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetGridView extends StatefulWidget {
  @override
  _WidgetGridViewState createState() => _WidgetGridViewState();
}

class _WidgetGridViewState extends State<WidgetGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("GridViewは一般的にはcountコンストラクタで作成"),
          Expanded(
              child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 10.0,
            children: item(),
          )),
        ],
      ),
    );
  }

  List<Widget> item() {
    List<Widget> list = [
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.indigo,
      ),
      Container(
        color: Colors.greenAccent,
      ),
      Container(
        color: Colors.redAccent,
      )
    ];
    return list;
  }
}
