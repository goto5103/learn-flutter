import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetIgnorePointer extends StatefulWidget {
  @override
  _WidgetIgnorePointerState createState() => _WidgetIgnorePointerState();
}

class _WidgetIgnorePointerState extends State<WidgetIgnorePointer> {
  bool _ignore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IgnorePointer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("誤タップを防ぐため、領域を保護する"),
          Text(_ignore ? "タップできない" : "タップできる"),
          IgnorePointer(
            ignoring: _ignore,
            child: Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("tap me"))
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _ignore = !_ignore;
                });
              },
              child: Text("ignore 無効化／有効化"))
        ],
      ),
    );
  }
}
