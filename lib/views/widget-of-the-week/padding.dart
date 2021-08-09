import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPadding extends StatefulWidget {
  @override
  _WidgetPaddingState createState() => _WidgetPaddingState();
}

class _WidgetPaddingState extends State<WidgetPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("余白を追加"),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  height: 100, color: Colors.amber, child: Text("all:10")),
            ),
          ),
          explanationText("EdgeInsetsDirectionalは開始終了の点から余白を追加"),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 40, 50, 80),
              child: Container(
                color: Colors.amber,
                child: Text("start:20, top:40, end:50, bottom:80"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
