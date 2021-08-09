import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetReorderableListView extends StatefulWidget {
  @override
  _WidgetReorderableListViewState createState() =>
      _WidgetReorderableListViewState();
}

class _WidgetReorderableListViewState extends State<WidgetReorderableListView> {
  final _items = ["a", "b", "c", "d", "e"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReorderableListView"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("入れ替え可能なリストを生成"),
          Expanded(
              child: ReorderableListView(
            padding: EdgeInsets.symmetric(horizontal: 40),
            header: Text("headerです"),
            children: [
              for (final item in _items)
                ListTile(
                  key: ValueKey(item),
                  title: Text(item),
                )
            ],
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final String item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
          ))
        ],
      ),
    );
  }
}
