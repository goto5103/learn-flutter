import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDismissible extends StatefulWidget {
  @override
  _WidgetDismissibleState createState() => _WidgetDismissibleState();
}

class _WidgetDismissibleState extends State<WidgetDismissible> {
  final items = ["a", "b", "c"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dismissible"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Text("水平方向にスワイプすると削除できる"),
            ),
            Dismissible(
              child: ListTile(
                title: Text("test"),
              ),
              background: Container(
                color: Colors.green,
              ),
              key: ValueKey("test"),
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Text("secondaryBackgroundを使うと左右双方向にスワイプして削除できる。"),
            ),
            Dismissible(
              child: ListTile(
                title: Text("test2"),
              ),
              key: ValueKey("test2"),
              background: Container(
                color: Colors.blue,
                child: Align(
                    alignment: Alignment.centerLeft, child: Icon(Icons.check)),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.cancel)),
              ),
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child: Text("directionプロパティを使うと、垂直方向にもスワイプできる"),
            ),
            Dismissible(
              child: ListTile(
                title: Text("test"),
              ),
              direction: DismissDirection.vertical,
              background: Container(
                color: Colors.green,
              ),
              key: ValueKey("test"),
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(10),
              child:
                  Text("ListViewの場合はonDismissedコールバックを使ってスワイプで消したら配列からも削除する"),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    key: ValueKey(items[index]),
                    background: Container(
                      color: Colors.green,
                    ),
                    child: ListTile(title: Text(items[index])));
              },
            )),
          ],
        ));
  }
}
