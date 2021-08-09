import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedPositioned extends StatefulWidget {
  @override
  _WidgetAnimatedPositionedState createState() =>
      _WidgetAnimatedPositionedState();
}

class _WidgetAnimatedPositionedState extends State<WidgetAnimatedPositioned> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("Stackの子としてのみ動作する"),
          explanationText("子のサイズをアニメーションとともに変更する。"),
          explanationText(
              "top、rightなど隣接する2辺のみの場合、サイズは変わらない（サイズを変えたくない場合はSlideTransitionが適しているかもしれない）"),
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                AnimatedPositioned(
                  child: Container(
                    color: Colors.amber,
                    child: Text("data"),
                  ),
                  duration: Duration(milliseconds: 1000),
                  top: isShow ? 70 : 10,
                  right: isShow ? 70 : 10,
                  bottom: isShow ? 70 : 10,
                  left: isShow ? 70 : 10,
                ),
                AnimatedPositioned(
                  child: Container(
                    color: Colors.indigo,
                    child: Text("data"),
                  ),
                  duration: Duration(milliseconds: 1000),
                  top: isShow ? 20 : 170,
                  right: isShow ? 20 : 170,
                ),
              ],
            ),
          ),
          explanationText("curveを指定して変化をつけることもできる"),
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                AnimatedPositioned(
                  child: Container(
                    color: Colors.amber,
                    child: Text("data"),
                  ),
                  duration: Duration(milliseconds: 1000),
                  top: isShow ? 170 : 10,
                  left: isShow ? 200 : 10,
                  curve: Curves.bounceIn,
                ),
                AnimatedPositioned(
                  child: Container(
                    color: Colors.indigo,
                    child: Text("data"),
                  ),
                  duration: Duration(milliseconds: 100),
                  top: isShow ? 20 : 170,
                  right: isShow ? 20 : 170,
                  curve: Curves.easeIn,
                ),
                AnimatedPositioned(
                  child: Container(
                    color: Colors.greenAccent,
                    child: Text("data"),
                  ),
                  duration: Duration(milliseconds: 1000),
                  top: isShow ? 170 : 70,
                  right: isShow ? 10 : 200,
                  curve: Curves.bounceOut,
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isShow = !isShow;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
