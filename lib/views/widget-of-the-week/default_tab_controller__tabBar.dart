import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDefaultTabController_TabBar extends StatefulWidget {
  @override
  _WidgetDefaultTabController_TabBarState createState() =>
      _WidgetDefaultTabController_TabBarState();
}

class _WidgetDefaultTabController_TabBarState
    extends State<WidgetDefaultTabController_TabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DefaultTabController_TabBar"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText(
                "Tabバーの作成。DefaultTabController（コントローラー）、TabBar（タブメニュー）、TabBarView（中身）を使用する"),
            SizedBox(
              height: 300,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: TabBar(
                    labelColor: Colors.amber,
                    tabs: [
                      Tab(
                        text: "tab1",
                      ),
                      Tab(
                        text: "tab2",
                      ),
                      Tab(
                        text: "tab4",
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      Container(
                        color: Colors.deepPurple,
                      ),
                      Container(
                        color: Colors.cyan,
                      ),
                      Container(
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
