import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetIndexedStack extends StatefulWidget {
  @override
  _WidgetIndexedStackState createState() => _WidgetIndexedStackState();
}

class _WidgetIndexedStackState extends State<WidgetIndexedStack> {
  int index = 0;
  List<Widget> list = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.black,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexedStack"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("Widgetの切り替えを行う"),
          SizedBox(
              height: 300,
              width: 300,
              child: IndexedStack(
                index: index,
                children: list,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = index + 1 < list.length ? index + 1 : 0;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
