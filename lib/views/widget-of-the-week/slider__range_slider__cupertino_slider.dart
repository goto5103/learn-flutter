import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSlider_RangeSlider_CupertinoSlider extends StatefulWidget {
  @override
  _WidgetSlider_RangeSlider_CupertinoSliderState createState() =>
      _WidgetSlider_RangeSlider_CupertinoSliderState();
}

class _WidgetSlider_RangeSlider_CupertinoSliderState
    extends State<WidgetSlider_RangeSlider_CupertinoSlider> {
  double _silder = 0.0;
  double _silder2 = 0.0;
  RangeValues _range = RangeValues(0.5, 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider_RangeSlider_CupertinoSlider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("自由なスライダー。"),
          Text(_silder.toString()),
          Slider(
            value: _silder,
            onChanged: (value) {
              setState(() {
                _silder = value;
              });
            },
            max: 100,
            min: 0,
          ),
          explanationText("決められた数で分割したスライダーもできる。値はスライダーの上にラベルとして描画できる"),
          Slider(
            value: _silder2,
            onChanged: (value) {
              setState(() {
                _silder2 = value;
              });
            },
            divisions: 4,
            label: "$_silder2",
          ),
          explanationText("範囲を選択するスライダー"),
          RangeSlider(
            values: _range,
            onChanged: (RangeValues value) {
              setState(() {
                _range = value;
              });
            },
          ),
          explanationText("iOS向けUI（Cupertino）のスライダー"),
          CupertinoSlider(
            value: _silder,
            onChanged: (value) {
              setState(() {
                _silder = value;
              });
            },
            max: 100,
            min: 0,
          ),
          explanationText(
              "プラットフォームに基づき、CupertinoかMaterialスライダーを表示する、アダプティブスライダー。"),
          Slider.adaptive(
            value: _silder,
            onChanged: (value) {
              setState(() {
                _silder = value;
              });
            },
            max: 100,
            min: 0,
          )
        ],
      ),
    );
  }
}
