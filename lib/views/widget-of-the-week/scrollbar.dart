import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetScrollbar extends StatefulWidget {
  @override
  _WidgetScrollbarState createState() => _WidgetScrollbarState();
}

class _WidgetScrollbarState extends State<WidgetScrollbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scrollbar"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText("スクロール可能なリストにスクロールバーを表示する。（リストの上限がわかっている場合のみ機能する）"),
            SizedBox(
              height: 300,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      color: index.isOdd ? Colors.white : Colors.amber,
                      height: 100.0,
                      child: Center(
                        child: Text('$index', textScaleFactor: 5),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
