import 'package:flutter/material.dart';

class WidgetFittedBox extends StatefulWidget {
  @override
  _WidgetFittedBoxState createState() => _WidgetFittedBoxState();
}

class _WidgetFittedBoxState extends State<WidgetFittedBox> {
  Widget _explanationRow(Widget widget, String explanation) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(height: 100, width: 100, color: Colors.grey, child: widget),
          Flexible(
              child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(explanation),
          ))
        ],
      ),
    );
  }

  Image image() {
    return Image.network(
        "https://1.bp.blogspot.com/-pOL-P7Mvgkg/YEGQAdidksI/AAAAAAABdc0/SbD0lC_X8iY_t5xLFtQYFC3FHFgziBuzgCNcBGAsYHQ/s932/buranko_businesswoman_sad.png");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _explanationRow(
              FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                      child: image())),
              "contain:ターゲットボックス内にソースが完全に含まれている状態で、可能な限り大きくする。"),
          _explanationRow(
              FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Container(
                      height: 150,
                      width: 50,
                      color: Colors.blue,
                      child: image())),
              "fitHeight:ソースがターゲットボックスから水平にはみ出すかどうかに関わらず、ソースの高さがすべて表示されるようにします。"),
          _explanationRow(
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                      child: image())),
              "fitWidth:ソースがターゲットボックスから垂直にはみ出していても、ソースの全幅が表示されるようにしてください。"),
          _explanationRow(
              FittedBox(
                  fit: BoxFit.fill,
                  child: Container(
                      height: 150,
                      width: 50,
                      color: Colors.blue,
                      child: image())),
              "fill:ソースのアスペクト比を歪ませてターゲットボックスを埋める。"),
          _explanationRow(
              FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                      height: 150,
                      width: 50,
                      color: Colors.blue,
                      child: image())),
              "cover:ターゲットボックス全体をカバーしつつ、できるだけ小さく。")
        ],
      ),
    );
  }
}
