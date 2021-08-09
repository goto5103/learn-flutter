import 'package:flutter/material.dart';

class WidgetSpacer extends StatefulWidget {
  @override
  _WidgetSpacerState createState() => _WidgetSpacerState();
}

class _WidgetSpacerState extends State<WidgetSpacer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text("Widgetの間に入れるだけでスペースが広がる"),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text("flexを指定すると相対サイズをカスタマイズできる"),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Spacer(
                flex: 4,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}
