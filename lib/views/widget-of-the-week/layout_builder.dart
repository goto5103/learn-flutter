import 'package:flutter/material.dart';

class WidgetLayoutBuilder extends StatefulWidget {
  @override
  _WidgetLayoutBuilderState createState() => _WidgetLayoutBuilderState();
}

class _WidgetLayoutBuilderState extends State<WidgetLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("デバイスの向きによって配置を変える"),
          LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 400) {
            return Column(
              children: [Container(
                width: double.infinity,
                height: 200,
                color: Colors.amber,
              ), Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue,
              )],
            );
          } else {
            return Row(
              children: [Container(
                width: MediaQuery.of(context).size.width/2,
                height: 200,
                color: Colors.amber,
              ), Container(
                width:MediaQuery.of(context).size.width/2,
                height: 200,
                color: Colors.blue,
              )],
            );
          }
        },
      ),
        ],
      )
    );
  }
}
