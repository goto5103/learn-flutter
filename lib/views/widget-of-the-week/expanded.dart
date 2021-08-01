import 'package:flutter/material.dart';

class WidgetExpanded extends StatefulWidget {
  @override
  _WidgetExpandedState createState() => _WidgetExpandedState();
}

class _WidgetExpandedState extends State<WidgetExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expanded"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "Expandedなし（均等配置）",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "真ん中のアンバーのみExpandedあり（均等配置）",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      )),
                      Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "すべてExpandedあり（均等配置）",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                      ))
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "すべてExpandedあり（Flex）",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                        child: Center(child: Text("1要素分")),
                      )),
                      Expanded(
                        flex: 2,
                          child: Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                        child: Center(child: Text("2要素分")),
                      )),
                      Expanded(
                        flex: 3,
                          child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                        child: Center(child: Text("3要素分")),
                      ))
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: double.infinity,
                  child: Text(
                    "アンバーのみExpandedあり（縦）",
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 50,
                        width: 50,
                      ),
                      Expanded(
                        child: Container(
                        color: Colors.amber,
                        width: 50,
                        
                      ),
                      ),
                      Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ) ,
        
        )
        );
  }
}
