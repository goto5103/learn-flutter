import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedPadding extends StatefulWidget {
  @override
  _WidgetAnimatedPaddingState createState() => _WidgetAnimatedPaddingState();
}

class _WidgetAnimatedPaddingState extends State<WidgetAnimatedPadding> {
  double padValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("動的にパディングを変更する"),
          Row(
            children: [
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ),
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.amber,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            padValue = padValue + 5;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
