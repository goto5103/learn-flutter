import 'package:flutter/material.dart';

class WidgetBuilderSample extends StatefulWidget {
  @override
  _WidgetBuilderState createState() => _WidgetBuilderState();
}

class _WidgetBuilderState extends State<WidgetBuilderSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Builder"),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return Text("親のcontextを参照したScaffold.of(context).hasAppBarの値 \n${Scaffold.of(context).hasAppBar}");
        },
      ),
    );
  }
}
