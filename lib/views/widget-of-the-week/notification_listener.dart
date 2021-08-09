import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetNotificationListener extends StatefulWidget {
  @override
  _WidgetNotificationListenerState createState() =>
      _WidgetNotificationListenerState();
}

class _WidgetNotificationListenerState
    extends State<WidgetNotificationListener> {
  ScrollNotification _notification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotificationListener"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ユーザーの動作に応じて通知をする。"),
          Text("スクロール時の通知　_notificationの値\n $_notification"),
          NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              print("$notification");
              setState(() {
                _notification = notification;
              });
              return false;
            },
            child: SingleChildScrollView(
              child: Container(
                height: 50,
                color: Colors.amber,
                child: ListView(
                  children: [
                    Text("test"),
                    Text("test"),
                    Text("test"),
                    Text("test")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
