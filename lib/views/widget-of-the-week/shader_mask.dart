import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetShaderMask extends StatefulWidget {
  @override
  _WidgetShaderMaskState createState() => _WidgetShaderMaskState();
}

class _WidgetShaderMaskState extends State<WidgetShaderMask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShaderMask"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ウィジェットにシェーダーを適用できる。"),
          ShaderMask(
            shaderCallback: (bounds) {
              return RadialGradient(
                      center: Alignment.center,
                      radius: 1,
                      tileMode: TileMode.mirror,
                      colors: [Colors.deepOrange, Colors.yellow])
                  .createShader(bounds);
            },
            child: Text(
              "燃えている",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return RadialGradient(
                  center: Alignment.bottomLeft,
                  radius: 1.3,
                  tileMode: TileMode.mirror,
                  colors: [
                    Colors.yellow,
                    Colors.deepOrange,
                    Colors.red,
                    Colors.pink,
                    Colors.deepPurple
                  ]).createShader(bounds);
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return RadialGradient(
                      center: Alignment.center,
                      radius: 1.3,
                      tileMode: TileMode.mirror,
                      colors: [
                        Colors.white,
                        Colors.black,
                      ]).createShader(bounds);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.white,
                  child: image(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "しょぼーん",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
