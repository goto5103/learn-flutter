import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDrawer extends StatefulWidget {
  @override
  _WidgetDrawerState createState() => _WidgetDrawerState();
}

class _WidgetDrawerState extends State<WidgetDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("Scaffoldにdrawerを与えると、自動的にappBarに追加される"),
          SizedBox(
            height: 100,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Drawer"),
                  centerTitle: true,
                ),
                drawer: Drawer(
                  child: ListTile(
                    title: Text("メニュー"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )),
          ),
          explanationText("右側に設置することも可能"),
          SizedBox(
            height: 100,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Drawer"),
                  centerTitle: true,
                ),
                endDrawer: Drawer()),
          ),
          explanationText("ボタン等で制御することも可能"),
          SizedBox(
            height: 100,
            child: Scaffold(
              key: _scaffoldKey,
              appBar: AppBar(
                title: Text("Drawer"),
                centerTitle: true,
              ),
              drawer: Drawer(),
              body: ElevatedButton(
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Text("Open drawer")),
            ),
          ),
        ],
      ),
    );
  }
}
// https://stackoverflow.com/questions/58095547/flutter-scaffold-ofcontext-opendrawer-doesnt-work
