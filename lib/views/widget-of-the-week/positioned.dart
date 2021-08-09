import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPositioned extends StatefulWidget {
  @override
  _WidgetPositionedState createState() => _WidgetPositionedState();
}

class _WidgetPositionedState extends State<WidgetPositioned>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Positioned"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationRowHorizontal(
        Stack(
          children: [
            Positioned(
              top: 25,left: 50,
              width: 50,height: 70,
              child: Container(
                color: Colors.amber,
                child: image(),))
          ],
        )
        , "縦横の位置とサイズを調整することができる"),
          explanationRowHorizontal(
        Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Colors.amber,
                child: image(),))
          ],
        )
        , "fillを使用すると位置やサイズの指定をせず、スペースを埋めることができる"),
          ],
        )
        );
  }
}
