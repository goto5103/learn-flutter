import 'package:flutter/material.dart';

class WidgetFlexible extends StatefulWidget {
  @override
  _WidgetFlexibleState createState() => _WidgetFlexibleState();
}

class _WidgetFlexibleState extends State<WidgetFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text("flexでサイズを指定"),
          ),
          Container(
            height: 150,
            child: Column(
              children: [
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.amber,
                      child: Center(child: Text("flex:3")),
                      width: double.infinity,
                    )),
                Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.teal,
                      child: Center(child: Text("flex:2")),
                      width: double.infinity,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.indigo,
                      child: Center(child: Text("flex:1")),
                      width: double.infinity,
                    )),
              ],
            ),
          ),
                    Container(
            margin: EdgeInsets.all(10),
            child: Text("defalutのFlexFit.looseの場合、優先サイズが適用される。\n例ではflex:3はheightが決まっていないContainerの子に直接Textを指定しているため、文字の高さが優先された。\n親の高さが縮むことはない"),
          ),
          Container(
            height: 130,
            child: Column(
              children: [
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.amber,
                      child: Text("flex:3"),
                      width: double.infinity,
                    )),
                Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.teal,
                      child: Center(child: Text("flex:2")),
                      width: double.infinity,
                    )),
              ],
            ),
          ),
            Container(
            margin: EdgeInsets.all(10),
            child: Text("q"),
          ),
          Container(
            height: 150,
            child: Column(
              children: [
               Container(
                 height: 80,
                      width: double.infinity,
                      color: Colors.amber,
                      child: Text("固定サイズ"),
                    ),
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.cyan,
                      child: Center(child: Text("flex:3")),
                      width: double.infinity,
                    )),
                    Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.teal,
                      child: Center(child: Text("flex:2")),
                      width: double.infinity,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
