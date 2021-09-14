import 'dart:math';

import 'package:flutter/material.dart';

class WidgetOpacity extends StatefulWidget {
  @override
  _WidgetOpacityState createState() => _WidgetOpacityState();
}

class _WidgetOpacityState extends State<WidgetOpacity> {
  double _opacity = 0.0;
  bool _isEnabled = false;

  Opacity _createOpacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: Container(
        color: Colors.amber,
        height: 50,
        width: 50,
        child: Text(
          opacity.toString(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

// Opacity でラップし、透明度をセットする。
// AnimatedOpacity の場合、duration をセットしてどのくらいの時間で変化するか指定する。
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "真ん中をOpacityで非表示に",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                      ),
                      _createOpacity(0.0),
                      Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "Opacity値変化",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _createOpacity(0.2),
                      _createOpacity(0.4),
                      _createOpacity(0.6),
                      _createOpacity(0.8),
                      _createOpacity(1.0),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  width: double.infinity,
                  child: Text(
                    "AnimatedOpacity フローティングアクションボタンをタップすると１秒かけて消えたり表示されたりする",
                    textAlign: TextAlign.left,
                  ),
                ),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 1),
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isEnabled = !_isEnabled;
            _isEnabled ? _opacity = 0.0 : _opacity = 1.0;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
