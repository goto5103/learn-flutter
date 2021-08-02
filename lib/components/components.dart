import 'package:flutter/material.dart';

/// サンプルイメージ
Image image() {
  return Image.network(
      "https://1.bp.blogspot.com/-pOL-P7Mvgkg/YEGQAdidksI/AAAAAAABdc0/SbD0lC_X8iY_t5xLFtQYFC3FHFgziBuzgCNcBGAsYHQ/s932/buranko_businesswoman_sad.png");
}

/// 説明用　横
Widget explanationRowHorizontal(Widget widget, String explanation) {
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

/// 説明用　縦
Widget explanationRowVertical(Widget widget, String explanation) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 10),
          child:
              Text(explanation),
        ),
        Container(
            height: 100,
            width: double.infinity,
            color: Colors.grey,
            child: widget),
      ],
    ),
  );
}
