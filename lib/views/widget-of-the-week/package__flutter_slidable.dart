import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__flutter_slidable extends StatefulWidget {
  @override
  _WidgetPackage__flutter_slidableState createState() => _WidgetPackage__flutter_slidableState();
}

class _WidgetPackage__flutter_slidableState extends State<WidgetPackage__flutter_slidable>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Package__flutter_slidable"),
          centerTitle: true,
        ),
        body:
        Column(
          children: [
            explanationText("スワイプして実行可能なアクションを表示することができる"),
            Slidable(child: ListTile(title: Text("title"),), actionPane: SlidableScrollActionPane(),actions: [
              IconSlideAction(
                caption: "test",
                color: Colors.amber,
                icon: Icons.archive,
                onTap: () => print("archive"),
              )
            ],actionExtentRatio: 1/2,),
            Slidable(child: ListTile(title: Text("title"),), actionPane: SlidableStrechActionPane(),actions: [
              IconSlideAction(
                caption: "test",
                color: Colors.amber,
                icon: Icons.archive,
                onTap: () => print("archive"),
              )
            ],actionExtentRatio: 1/2,),
             Slidable(child: ListTile(title: Text("title"),), actionPane: SlidableBehindActionPane(),actions: [
              IconSlideAction(
                caption: "test",
                color: Colors.amber,
                icon: Icons.archive,
                onTap: () => print("archive"),
              )
            ],actionExtentRatio: 1/2,)
          ],
        ),
        );
  }
}
