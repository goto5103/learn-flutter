import 'package:flutter/material.dart';
import "package:lean/models/widget_list.dart";

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  var listItem = ['SafeArea'];
  final a = WidgetList.getList();
  

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
                title: Text(WidgetList.getList()[index]),
                // subtitle: Text('&listItem'),
                onTap: () {
                  print(a);
                  Navigator.of(context).pushNamed("/${listItem[index]}");
                },
              ));
        },
        itemCount: WidgetList.getList().length,
      ),
    );
  }
}

class Navigate {}