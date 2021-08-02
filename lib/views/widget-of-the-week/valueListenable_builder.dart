import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetValueListenableBuilder extends StatefulWidget {
  @override
  _WidgetValueListenableBuilderState createState() =>
      _WidgetValueListenableBuilderState();
}

class _WidgetValueListenableBuilderState
    extends State<WidgetValueListenableBuilder> {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _counter = ValueNotifier<int>(0);
    final Widget goodJob = const Text('Good job!');

    // 拡張したValueNotifierを使った場合
    final MyData _myData = new MyData(_counter.value, _counter.value);
    final MyNotifier _myNotifier = MyNotifier(_myData);

    return Scaffold(
      appBar: AppBar(
        title: Text("ValueListenableBuilder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationRowVertical(
              ValueListenableBuilder(
                valueListenable: _counter,
                builder: (BuildContext context, int value, Widget child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('$value'),
                      child,
                      Text('$value'),
                      child,
                    ],
                  );
                },
                child: goodJob,
              ),
              ""),
          explanationRowVertical(
              ValueListenableBuilder(
                valueListenable: _myNotifier,
                builder: (context, MyData value, child) {
                  return Text('${value.intA}_${value.intB}');
                },
              ),
              "")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          _counter.value += 1;
          _myNotifier.changeMyData(_counter.value);
        },
      ),
    );
  }
}

class MyData {
  int intA;
  int intB;
  MyData(this.intA, this.intB);
}

class MyNotifier extends ValueNotifier<MyData> {
  MyNotifier(MyData value) : super(value);

  void changeMyData(int i) {
    value.intA = i * 10;
    value.intB = (i / 3).ceil();
    notifyListeners();
  }
}
