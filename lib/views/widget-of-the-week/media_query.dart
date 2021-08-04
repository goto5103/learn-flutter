import 'package:flutter/material.dart';

class WidgetMediaQuery extends StatefulWidget {
  @override
  _WidgetMediaQueryState createState() => _WidgetMediaQueryState();
}

class _WidgetMediaQueryState extends State<WidgetMediaQuery> {
  @override
  Widget build(BuildContext context) {
    final _deviceData = MediaQuery.of(context);
    final _size = _deviceData.size;
    final _orientation = _deviceData.orientation;
    final _textScaleFactor = _deviceData.textScaleFactor;
    final _padding = _deviceData.padding;
    final _disableAnimations = _deviceData.disableAnimations;
    final _platformBrightness = _deviceData.platformBrightness;
    final _viewInsets = _deviceData.viewInsets;
    final _devicePixelRatio = _deviceData.devicePixelRatio;
    final info = """
デバイスサイズ:$_size
向き：$_orientation
フォントサイズスケール：$_textScaleFactor
システムUIによって部分的に隠されているディスプレイノッチ部分：$_padding
アニメーション制限：$_disableAnimations
明るさモード：$_platformBrightness
システムUIによって完全に隠されているディスプレイ部分（キーボード）：$_viewInsets
論理ピクセルに対するデバイスピクセル比$_devicePixelRatio
など
""";

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text("デバイスから様々なデータを取得し、UIの構成に役立てる"),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(info),
          )
        ],
      ),
    );
  }
}
