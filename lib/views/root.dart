import 'package:flutter/material.dart';
import "package:lean/models/widget_list.dart";

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  List<String> list = ["/WidgetOfTheWeek"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Learning"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black38),
                ),
              ),
              child: ListTile(
                title: Text("${list[index]}"),
                // subtitle: Text('&listItem'),
                onTap: () {
                  Navigator.of(context).pushNamed("${list[index]}");
                },
              ));
        },
        itemCount: list.length,
      ),
    );
  }
}
