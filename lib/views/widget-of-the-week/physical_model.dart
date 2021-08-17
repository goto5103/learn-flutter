import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPhysicalModel extends StatefulWidget {
  @override
  _WidgetPhysicalModelState createState() => _WidgetPhysicalModelState();
}

class _WidgetPhysicalModelState extends State<WidgetPhysicalModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhysicalModel"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            explanationText("ウィジェットに陰影をつける"),
            PhysicalModel(
                elevation: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                color: Colors.black),
            explanationText("色、シェイプの変更"),
            PhysicalModel(
              elevation: 10,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              color: Colors.black,
              shadowColor: Colors.green,
              shape: BoxShape.circle,
            ),
            explanationText(
                "子ウィジェットに陰影がつくわけではなく、子ウィジェットの下のレイヤに描写される物体により陰影がつく。そのためcolorオプションを指定しても下のレイヤの色が変わるだけで普通は変化を見ることができない"),
            PhysicalModel(
              elevation: 10,
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
              color: Colors.black,
              shadowColor: Colors.green,
              shape: BoxShape.circle,
            ),
            explanationText("childを指定しない場合、陰影はつかない"),
            PhysicalModel(
              elevation: 10,
              color: Colors.black,
              shadowColor: Colors.green,
              shape: BoxShape.circle,
            ),
          ],
        ),
      ),
    );
  }
}
