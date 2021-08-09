import 'dart:math';

import 'package:flutter/material.dart';

class WidgetInheritedWidget extends StatefulWidget {
  @override
  _WidgetInheritedWidgetState createState() => _WidgetInheritedWidgetState();
}

class _WidgetInheritedWidgetState extends State<WidgetInheritedWidget> {
  int _counter = 0;

  _onChange() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      _counter % 2 == 0 ? 0.5 : 1,
    );
  }

  _on() {
    print(2222);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Ancestor(
              colorOne: _onChange(),
              child: Column(
                children: [
                  ColorOne(),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        child: Text("change"),
      ),
    );
  }
}

class ColorOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 動画内で使用していたinheritFromWidgetOfExactTypeは、flutter2で非推奨となった模様
    final ancestor = context.dependOnInheritedWidgetOfExactType<Ancestor>();

    return Container(
      color: ancestor.colorOne,
      height: 50.0,
      width: 50.0,
    );
  }
}


class Ancestor extends InheritedWidget {
  final Color colorOne;
  Ancestor({this.colorOne, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant Ancestor oldWidget) {
    return colorOne != oldWidget.colorOne;
  }
}
