import 'package:flutter/material.dart';

class WidgetHeroMode extends StatefulWidget {
  @override
  _WidgetHeroModeState createState() => _WidgetHeroModeState();
}

class _WidgetHeroModeState extends State<WidgetHeroMode>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HeroMode"),
          centerTitle: true,
        ),
        );
  }
}
