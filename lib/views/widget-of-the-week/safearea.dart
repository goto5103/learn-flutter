import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lean/redux/action/actions.dart';
import 'package:lean/redux/state/app_state.dart';

class WidgetSafeArea extends StatefulWidget {
  @override
  _WidgetSafeAreaState createState() => _WidgetSafeAreaState();
}

class _WidgetSafeAreaState extends State<WidgetSafeArea> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (store) => store.state.safeAreaState.isEnable,
      builder: (BuildContext context, bool isEnable) {
        return Scaffold(
          appBar: AppBar(
            title: Text("SafeArea"),
            centerTitle: true,
          ),
          body: isEnable
              ? SafeArea(
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "Text is visible.",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }),
                )
              : ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                  return Text(
                    "The text is obscured",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                }),
          floatingActionButton: StoreConnector<AppState,VoidCallback>(
            converter: (store) => () => store.dispatch(SafeAreaAction()),
            builder: (context, dispatchIncrement) {
          return FloatingActionButton(
            backgroundColor: isEnable ?  Colors.blue : Colors.grey,
            onPressed: dispatchIncrement,
            tooltip: 'Increment',
            child: Icon(Icons.check),
          );
        },
          ),
        );
      },
      distinct: true,
    );
  }
}
