import 'dart:async';

import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__async extends StatefulWidget {
  @override
  _WidgetPackage__asyncState createState() => _WidgetPackage__asyncState();
}

class _WidgetPackage__asyncState extends State<WidgetPackage__async> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Package__async"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("非同期パッケージ　async"),
          Row(
            children: [
              Text("2つのストリームをマージする："),
              StreamBuilder<int>(
                  stream: streamTest(),
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    print("${snapshot.data}");
                    return Text("${snapshot.data}");
                  })
            ],
          ),
        ],
      ),
    );
  }

  final Stream<int> _s2 = (() async* {
    for (int i = 1; i < 10; i++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
  })();
  final Stream<int> _s1 = (() async* {
    for (int i = 1; i < 10; i++) {
      await Future<void>.delayed(const Duration(seconds: 5));
      yield i * 100;
    }
  })();

  Stream<int> streamTest() {
    final s1 = _s1;
    final s2 = _s2;
    return StreamGroup.merge([s1, s2]);
  }
}
