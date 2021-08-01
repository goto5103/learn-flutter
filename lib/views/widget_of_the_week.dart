import 'package:flutter/material.dart';
import "package:lean/models/widget_list.dart";

class WidgetOfTheWeek extends StatefulWidget {
  @override
  _WidgetOfTheWeekState createState() => _WidgetOfTheWeekState();
}

class _WidgetOfTheWeekState extends State<WidgetOfTheWeek> {
  final widgetList = WidgetList().getWidgetList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Of The Week"),
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
                title: Text("${widgetList[index].displayName}"),
                // subtitle: Text('&listItem'),
                onTap: () {
                  Navigator.of(context).pushNamed("${widgetList[index].path}");
                },
              ));
        },
        itemCount: widgetList.length,
      ),
    );
  }
}
