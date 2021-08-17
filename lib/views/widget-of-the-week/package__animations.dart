import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__Animations extends StatefulWidget {
  @override
  _WidgetPackage__AnimationsState createState() =>
      _WidgetPackage__AnimationsState();
}

class _WidgetPackage__AnimationsState extends State<WidgetPackage__Animations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Package__animations"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("アニメーションを簡単に実装できる（下記はContainer transformの例）"),
          OpenContainer(
              closedBuilder: (context, action) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  child: Text("tap me"),
                );
              },
              openBuilder: (context, action) {
                return image();
              },),
              OpenContainer(
                openColor: Colors.pink,
                transitionDuration: Duration(seconds: 3),
                transitionType: ContainerTransitionType.fadeThrough,
              closedBuilder: (context, action) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  // color: Colors.red,
                  child: Text("tap me"),
                );
              },
              openBuilder: (context, action) {
                return image();
              },),
        ],
      ),
    );
  }
}
// https://pub.dev/packages/animations
