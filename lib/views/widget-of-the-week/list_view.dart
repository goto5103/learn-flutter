import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetListView extends StatefulWidget {
  @override
  _WidgetListViewState createState() => _WidgetListViewState();
}

class _WidgetListViewState extends State<WidgetListView> {
  final _items = ["a", "b", "c"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ListViewの子にウィジェットを指定するとスクロール可能なリストを生成する"),
          Expanded(
              child: ListView(
            children: [
              Container(
                height: 50,
                color: Colors.amber,
                child: Text("1"),
              ),
              Container(
                height: 50,
                color: Colors.indigo,
                child: Text("2"),
              ),
              Container(
                height: 50,
                color: Colors.cyan,
                child: Text("3"),
              ),
              Container(
                height: 50,
                color: Colors.deepPurple,
                child: Text("4"),
              ),
              Container(
                height: 50,
                color: Colors.pinkAccent,
                child: Text("5"),
              ),
              Container(
                height: 50,
                color: Colors.yellow,
                child: Text("6"),
              ),
              Container(
                height: 50,
                color: Colors.deepOrange,
                child: Text("7"),
              )
            ],
          )),
          explanationText("スクロールの方向を水平にすることも可能"),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 100,
                color: Colors.amber,
                child: Text("1"),
              ),
              Container(
                width: 100,
                color: Colors.indigo,
                child: Text("2"),
              ),
              Container(
                width: 100,
                color: Colors.cyan,
                child: Text("3"),
              ),
              Container(
                width: 100,
                color: Colors.deepPurple,
                child: Text("4"),
              ),
              Container(
                width: 100,
                color: Colors.pinkAccent,
                child: Text("5"),
              ),
              Container(
                width: 100,
                color: Colors.yellow,
                child: Text("6"),
              ),
              Container(
                width: 100,
                color: Colors.deepOrange,
                child: Text("7"),
              )
            ],
          )),
          explanationText("下からのスクロールに変更も可能"),
          Expanded(
              child: ListView(
            reverse: true,
            children: [
              Container(
                height: 50,
                color: Colors.amber,
                child: Text("1"),
              ),
              Container(
                height: 50,
                color: Colors.indigo,
                child: Text("2"),
              ),
              Container(
                height: 50,
                color: Colors.cyan,
                child: Text("3"),
              ),
              Container(
                height: 50,
                color: Colors.deepPurple,
                child: Text("4"),
              ),
              Container(
                height: 50,
                color: Colors.pinkAccent,
                child: Text("5"),
              ),
              Container(
                height: 50,
                color: Colors.yellow,
                child: Text("6"),
              ),
              Container(
                height: 50,
                color: Colors.deepOrange,
                child: Text("7"),
              ),
            ],
          )),
          explanationText("動的に生成する必要があるリストの場合はbuilderを使う"),
          Expanded(
              child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return Text(_items[index]);
            },
          )),
          explanationText("separatedを使うと項目間の区切りを変更できる"),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return Text(_items[index]);
            },
          ))
        ],
      ),
    );
  }
}
