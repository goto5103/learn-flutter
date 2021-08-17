import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__sqflite extends StatefulWidget {
  @override
  _WidgetPackage__sqfliteState createState() => _WidgetPackage__sqfliteState();
}

class _WidgetPackage__sqfliteState extends State<WidgetPackage__sqflite>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Package__sqflite"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            explanationText("対応するdartSDKのバージョンが古く使用できないのでスキップ　version >=1.8.3 <2.0.0"),
          ],
        ),
        );
  }
}
