import 'package:flutter/material.dart';

class WidgetSliverList_SliverGrid extends StatefulWidget {
  @override
  _WidgetSliverList_SliverGridState createState() =>
      _WidgetSliverList_SliverGridState();
}

class _WidgetSliverList_SliverGridState
    extends State<WidgetSliverList_SliverGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverList&SliverGrid"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Colors.red,
              height: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              color: Colors.orange,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
            ),
          ])),
          SliverGrid.count(
            crossAxisCount: 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(color: Colors.yellow),
              Container(color: Colors.blue),
            ],
          ),
          SliverAppBar(pinned: true, title: Text("header1"), leading: Text("")),
          SliverGrid.extent(
            maxCrossAxisExtent: 50.0,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(color: Colors.yellow),
              Container(color: Colors.blue),
            ],
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          ),
          SliverAppBar(pinned: true, title: Text("header2"), leading: Text("")),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Colors.red,
              height: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
            ),
            Container(
              color: Colors.orange,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
            ),
          ])),
        ],
      ),
    );
  }
}
