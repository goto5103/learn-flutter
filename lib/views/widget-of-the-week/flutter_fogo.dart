import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetFlutterLogo extends StatefulWidget {
  @override
  _WidgetFlutterLogoState createState() => _WidgetFlutterLogoState();
}

class _WidgetFlutterLogoState extends State<WidgetFlutterLogo> {
  double size = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLogo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ロゴの表示"),
          FlutterLogo(),
          explanationText("サイズの変更、文字の表示が可能"),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.horizontal,
          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
          ),
          explanationText("Curveプロパティでアニメーションを変更可能"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  size = size == 10 ? size * 10 : size / 10;
                });
              },
              child: Text("アニメーションスタート")),
          FlutterLogo(
            size: size,
            curve: Curves.bounceInOut,
            duration: const Duration(seconds: 5),
          ),
        ],
      ),
    );
  }
}
