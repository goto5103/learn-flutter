import 'package:flutter/material.dart';

class WidgetStreamBuilder extends StatefulWidget {
  @override
  _WidgetStreamBuilderState createState() => _WidgetStreamBuilderState();
}

class _WidgetStreamBuilderState extends State<WidgetStreamBuilder> {
  List<Widget> _errorChildren(AsyncSnapshot<int> snapshot) {
    List<Widget> children;
    children = <Widget>[
      const Icon(
        Icons.error_outline,
        color: Colors.red,
        size: 60,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text('Error: ${snapshot.error}'),
      ),
    ];
    return children;
  }

  List<Widget> _noneChildren() {
    List<Widget> children;
    children = const <Widget>[
      Icon(
        Icons.info,
        color: Colors.blue,
        size: 60,
      ),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text('Select a lot'),
      )
    ];
    return children;
  }

  List<Widget> _waitingChildren() {
    List<Widget> children;
    children = const <Widget>[
      SizedBox(
        child: CircularProgressIndicator(),
        width: 60,
        height: 60,
      ),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text('Awaiting bids...'),
      )
    ];
    return children;
  }

  List<Widget> _activeChildren(AsyncSnapshot<int> snapshot) {
    List<Widget> children;
    children = <Widget>[
      const Icon(
        Icons.check_circle_outline,
        color: Colors.green,
        size: 60,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text('\$${snapshot.data}'),
      )
    ];
    return children;
  }

  List<Widget> _doneChildren(AsyncSnapshot<int> snapshot) {
    List<Widget> children;
    children = <Widget>[
      const Icon(
        Icons.info,
        color: Colors.blue,
        size: 60,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text('\$${snapshot.data} (closed)'),
      )
    ];
    return children;
  }

  @override
  Widget build(BuildContext context) {
    final Stream<int> _bids = (() async* {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield 1;
      await Future<void>.delayed(const Duration(seconds: 1));
    })();
    final Stream<int> _bids2 = (() async* {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield 100;
      await Future<void>.delayed(const Duration(seconds: 1));
    })();
    return Scaffold(
        appBar: AppBar(
          title: Text("StreamBuilder"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Center(
            //     // ???simple???????????????
            //     child: StreamBuilder<int>(
            //         stream: _bids2,
            //         builder:
            //             (BuildContext context, AsyncSnapshot<int> snapshot) {
            //           if (!snapshot.hasData) {
            //             return CircularProgressIndicator();
            //           }
            //           return Text(snapshot.data.toString());
            //         })),
            Center(
              // switch??????????????????????????????
              child: StreamBuilder<int>(
                stream: _bids,
                // stream???????????????????????????Widget?????????
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  List<Widget> children;

                  if (snapshot.hasError) {
                    children = _errorChildren(snapshot);
                  } else {
                    switch (snapshot.connectionState) {
                      // ????????????
                      case ConnectionState.none:
                        children = _noneChildren();
                        break;
                      // ?????????
                      case ConnectionState.waiting:
                        children = _waitingChildren();
                        break;
                      // ?????????
                      case ConnectionState.active:
                        children = _activeChildren(snapshot);
                        break;
                      // ??????
                      case ConnectionState.done:
                        children = _doneChildren(snapshot);
                        break;
                    }
                  }

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  );
                },
              ),
            )
          ],
        ));
  }
}
