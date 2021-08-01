import 'dart:math';

import 'package:flutter/material.dart';

class WidgetFutureBuilder extends StatefulWidget {
  @override
  _WidgetFutureBuilderState createState() => _WidgetFutureBuilderState();
}

class _WidgetFutureBuilderState extends State<WidgetFutureBuilder> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 5),
    () => 'Data Loaded',
  );

  Future<String> _loadData;

  /// データ取得
  Future<String> _getData() async {

    // 通信の再現
    await Future.delayed(
      Duration(seconds: 1),
    );
    return Future.value("成功！");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.grey[200],
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
            child: FutureBuilder<String>(
              future: _calculation,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                List<Widget> children;
                if (snapshot.hasData) {
                  children = <Widget>[
                    const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Result: ${snapshot.data}'),
                    )
                  ];
                } else if (snapshot.hasError) {
                  children = <Widget>[
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Error: ${snapshot.error}'),
                    )
                  ];
                } else {
                  // 待機中
                  children = const <Widget>[
                    SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Awaiting result...'),
                    )
                  ];
                }
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          color: Colors.grey[200],
          child: FutureBuilder(
            future: _loadData, // 接続する非同期処理
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (_loadData == null) return Text("ボタンをタップして開始");

              // ConnectionState.doneをチェックし、完了するまではインジケーター表示
              if (snapshot.connectionState != ConnectionState.done)
                return CircularProgressIndicator();
              
              // エラーとなった場合
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              // データが取得された場合
              if (snapshot.hasData) {
                return Text(snapshot.data);
              } else {
                return Text("データなし");
              }
            },
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _loadData = _getData();
        });
      }),
    );
  }
}
