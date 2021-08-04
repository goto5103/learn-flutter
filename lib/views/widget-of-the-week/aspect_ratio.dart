import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAspectRatio extends StatefulWidget {
  @override
  _WidgetAspectRatioState createState() => _WidgetAspectRatioState();
}

class _WidgetAspectRatioState extends State<WidgetAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              explanationText("アスクペクト比を指定する"),
              explanationText("3:2"),
              Container(
                height: 50,
                child: AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                      color: Colors.amber,
                    )),
              ),
              explanationText("16:9"),
              Container(
                height: 50,
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.amber,
                    )),
              ),
              explanationText("1:1"),
              Container(
                height: 50,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.amber,
                    )),
              ),
              explanationText(
                  "Expandedで囲むと強制的に拡張されてしまいAspectRatioを指定する意味がなくなる"),
              Expanded(
                child: AspectRatio(
                    aspectRatio: 160 / 9,
                    child: Container(
                      color: Colors.amber,
                    )),
              ),
              explanationText(
                  "ExpandedとAspectRatioの間にAlignを指定すると子は独自の比率を使用できる"),
              Expanded(
                  child: Align(
                alignment: Alignment.center,
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.amber,
                    )),
              ))
            ],
          ),
        ));
  }
}
