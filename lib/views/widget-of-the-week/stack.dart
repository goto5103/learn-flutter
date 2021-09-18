import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetStack extends StatefulWidget {
  @override
  _WidgetStackState createState() => _WidgetStackState();
}

class _WidgetStackState extends State<WidgetStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ウィジェットを重ねて表示する"),
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.lightGreen,
              ),
            ],
          ),
          explanationText("alignmentを指定して位置を揃えることができる"),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.lightGreen,
              ),
            ],
          ),
          explanationText("Positionedを使ってStack内の特定の位置に置くことも可能"),
          explanationText("はみ出る場合は、外枠まで飛び出すかはみ出た分を切り取るか選択できる"),
          Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            // overflow: Overflow.visible, // 非推奨に
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Positioned(
                  bottom: -40,
                  right: -40,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.yellow,
                  )),
              Container(
                width: 40,
                height: 40,
                color: Colors.lightGreen,
              ),
            ],
          )
        ],
      ),
    );
  }
}
