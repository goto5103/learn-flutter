import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAnimatedSwitcher extends StatefulWidget {
  @override
  _WidgetAnimatedSwitcherState createState() => _WidgetAnimatedSwitcherState();
}

class _WidgetAnimatedSwitcherState extends State<WidgetAnimatedSwitcher>
    with SingleTickerProviderStateMixin {
  bool isAmber = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("フェード"),
          Center(
            child: AnimatedSwitcher(
              duration: Duration(seconds: 1),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(child: child, opacity: animation);
              },
              child: isAmber
                  ? Container(
                      key: UniqueKey(),
                      height: 50,
                      width: 100,
                      color: Colors.amber,
                    )
                  : Container(
                      key: UniqueKey(),
                      height: 50,
                      width: 100,
                      color: Colors.blue,
                    ),
            ),
          ),
          explanationText("スケール"),
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: isAmber
                ? Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.amber,
                  )
                : Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                  ),
          ),
          explanationText("ローテーション"),
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return RotationTransition(child: child, turns: animation);
            },
            child: isAmber
                ? Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.amber,
                  )
                : Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                  ),
            switchOutCurve: Curves.easeInOutCubic,
            switchInCurve: Curves.fastLinearToSlowEaseIn,
          ),
          explanationText("switchInCurve、switchOutCurveを与えて変化に緩急をつける"),
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: isAmber
                ? Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.amber,
                  )
                : Container(
                    key: UniqueKey(),
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                  ),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeOutExpo,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAmber = !isAmber;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
