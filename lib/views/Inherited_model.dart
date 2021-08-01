import 'dart:math';

import 'package:flutter/material.dart';

class WidgetInheritedModel extends StatefulWidget {
  @override
  _WidgetInheritedModelState createState() => _WidgetInheritedModelState();
}

class _WidgetInheritedModelState extends State<WidgetInheritedModel> {
  int _counter = 0;

  _color() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      _counter % 2 == 0 ? 0.3 : 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedModel"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Ancestor(
              colorOne: _color(),
              colorTwo: _color(),
              child: Column(
                children: [
                  const ColorOne(),
                  const ColorTwo(),
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
  const ColorOne();
  @override
  Widget build(BuildContext context) {
    // Ancestorのoneアスペクトが変更されたときのみcontextが再構築される
    final ancestor2 = Ancestor.of(context, "one");

    return Container(
      color: ancestor2.colorOne,
      height: 50.0,
      width: 50.0,
    );
  }
}

class ColorTwo extends StatelessWidget {
  const ColorTwo();
  @override
  Widget build(BuildContext context) {
    // Ancestorのtwoアスペクトが変更されたときのみcontextが再構築される
    final ancestor = Ancestor.of(context, "two");

    return Container(
      color: ancestor.colorTwo,
      height: 50.0,
      width: 50.0,
    );
  }
}

class Ancestor extends InheritedModel<String> {
  final Color colorTwo;
  final Color colorOne;
  Ancestor({this.colorTwo, this.colorOne, Widget child}) : super(child: child);

  static Ancestor of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<Ancestor>(context, aspect: aspect);
  }

  // 継承されたモデルが再構築されたとき、再構築しなければならないか判断する
  @override
  bool updateShouldNotify(covariant Ancestor oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  // updateShouldNotifyがtrueを返した場合に、各アスペクトの依存関係を確認する
  @override
  bool updateShouldNotifyDependent(
      covariant Ancestor oldWidget, Set dependencies) {
    // colortwoの時だけ変更をする
    if (dependencies.contains("one") && colorTwo != oldWidget.colorTwo) {
      return true;
    }
    // if (dependencies.contains("two") && colorTwo != oldWidget.colorTwo) {
    //   return true;
    // }
    return false;
  }
}
