import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetColorFiltered extends StatefulWidget {
  @override
  _WidgetColorFilteredState createState() => _WidgetColorFilteredState();
}

class _WidgetColorFilteredState extends State<WidgetColorFiltered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFiltered"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("指定色でフィルターをかける（下記はフィルターの例）"),
          SizedBox(
            height: 200,
            child: Table(
              children: [
                TableRow(children: [
                  TableCell(
                      child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(Colors.green, BlendMode.modulate),
                        child: image(),
                      ),
                      Text("modulate")
                    ],
                  )),
                  TableCell(
                      child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(Colors.green, BlendMode.colorBurn),
                        child: image(),
                      ),
                      Text("colorBurn")
                    ],
                  )),
                  TableCell(
                      child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(Colors.green, BlendMode.darken),
                        child: image(),
                      ),
                      Text("darken")
                    ],
                  )),
                  TableCell(
                      child: Column(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.green, BlendMode.difference),
                        child: image(),
                      ),
                      Text("difference")
                    ],
                  )),
                ])
              ],
            ),
          ),
          explanationText("ウィジェットに対してもフィルターは有効"),
          SizedBox(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.saturation),
              child: Container(
                color: Colors.red,
                child: Text("test"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
