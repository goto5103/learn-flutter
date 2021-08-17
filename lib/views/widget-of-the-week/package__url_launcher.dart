import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetPackage__url_launcher extends StatefulWidget {
  @override
  _WidgetPackage__url_launcherState createState() =>
      _WidgetPackage__url_launcherState();
}

class _WidgetPackage__url_launcherState
    extends State<WidgetPackage__url_launcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Package__url_launcher"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("WEBページを開く"),
          ElevatedButton(
              onPressed: () async {
                await launch("https://flutter.dev");
              },
              child: Text("Open")),
          explanationText("電話"),
          ElevatedButton(
              onPressed: () async {
                await launch("tel:+81 0 0000 0000");
              },
              child: Text("Open")),
          explanationText("SMS"),
          ElevatedButton(
              onPressed: () async {
                await launch("sms:+81 0 0000 0000");
              },
              child: Text("Open")),
          explanationText("メール"),
          ElevatedButton(
              onPressed: () async {
                await launch("mailto:hoge@example.com");
              },
              child: Text("Open")),
          explanationText("特定のアプリ"),
          ElevatedButton(
              onPressed: () async {
                await launch("market://details");
              },
              child: Text("Open")),
          explanationText("使用するときはcanLaunchで開くことができるか確認してから開くようにする"),
          ElevatedButton(
              onPressed: () async {
                const url = "instagram://user";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw "Could not launch $url";
                }
              },
              child: Text("Open")),
        ],
      ),
    );
  }
}
