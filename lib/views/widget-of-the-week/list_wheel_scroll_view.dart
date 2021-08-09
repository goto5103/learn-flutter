import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetListWheelScrollView extends StatefulWidget {
  @override
  _WidgetListWheelScrollViewState createState() =>
      _WidgetListWheelScrollViewState();
}

class _WidgetListWheelScrollViewState extends State<WidgetListWheelScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheelScrollView"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("輪のスクロールリスト"),
          SizedBox(
            height: 100,
            child: ListWheelScrollView(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("1"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("2"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("3"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("4"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("5"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("6"),
                )
              ],
              itemExtent: 40,
            ),
          ),
          explanationText("輪の直径"),
          SizedBox(
            height: 100,
            child: ListWheelScrollView(
              diameterRatio: 0.5,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("1"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("2"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("3"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("4"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("5"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("6"),
                )
              ],
              itemExtent: 40,
            ),
          ),
          explanationText("軸外"),
          SizedBox(
            height: 100,
            child: ListWheelScrollView(
              offAxisFraction: -0.8,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("1"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("2"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("3"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("4"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("5"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("6"),
                )
              ],
              itemExtent: 40,
            ),
          ),
          explanationText("拡大効果"),
          SizedBox(
            height: 100,
            child: ListWheelScrollView(
              useMagnifier: true,
              magnification: 2,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("1"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("2"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("3"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("4"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("5"),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Text("6"),
                )
              ],
              itemExtent: 40,
            ),
          )
        ],
      ),
    );
  }
}
