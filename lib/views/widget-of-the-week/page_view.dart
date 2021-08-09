import 'package:flutter/material.dart';

class WidgetPageView extends StatefulWidget {
  @override
  _WidgetPageViewState createState() => _WidgetPageViewState();
}

class _WidgetPageViewState extends State<WidgetPageView> {
  // スワイプを検出するためのコントローラー
  final _controller = PageController(
      // 開始ページの設定
      initialPage: 0);
  final _controllerVertical = PageController(
      // 開始ページの設定
      initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: PageView(
        // デフォルトはAxis.horizontalみたいだが、指定しないとスワイプできなかった。わかりやすくすためにも指定したほうがいい
        // horizontal　横方向
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Center(
            child: Text("horizontal1"),
          ),
          Center(
            child: Text("horizontal2"),
          ),
          PageView(
           // vertical　縦方向
            scrollDirection: Axis.vertical,
            controller: _controllerVertical,
            children: [
              Center(
                child: Text("vertical1"),
              ),
              Center(
                child: Text("vertical2"),
              )
            ],
          )
        ],
      ),
    );
  }
}
