import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetToggleButtons extends StatefulWidget {
  @override
  _WidgetToggleButtonsState createState() => _WidgetToggleButtonsState();
}

class _WidgetToggleButtonsState extends State<WidgetToggleButtons> {
  List<bool> _select = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToggleButtons"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ユーザーが選択可能なオプションボタンを作成"),
          ToggleButtons(
            children: [
              Icon(Icons.local_cafe),
              Icon(Icons.fastfood),
              Icon(Icons.cake)
            ],
            color: Colors.grey,
            selectedColor: Colors.green,
            isSelected: _select,
            onPressed: (int index) {
              setState(() {
                _select[index] = !_select[index];
              });
            },
          ),
          explanationText("枠の形、色、サイズをカスタマイズ可能"),
          ToggleButtons(
            children: [
              Icon(Icons.local_cafe),
              Icon(Icons.fastfood),
              Icon(Icons.cake)
            ],
            borderRadius: BorderRadius.circular(20),
            borderWidth: 5,
            borderColor: Colors.orange,
            selectedBorderColor: Colors.deepOrange,
            fillColor: Colors.amber,
            selectedColor: Colors.red,
            isSelected: _select,
            onPressed: (int index) {
              setState(() {
                _select[index] = !_select[index];
              });
            },
          ),
          explanationText("タップしたとき、長押ししたときの色も指定可能"),
          ToggleButtons(
            children: [
              Icon(Icons.local_cafe),
              Icon(Icons.fastfood),
              Icon(Icons.cake)
            ],
            splashColor: Colors.deepPurple,
            highlightColor: Colors.greenAccent,
            isSelected: _select,
            onPressed: (int index) {
              setState(() {
                _select[index] = !_select[index];
              });
            },
          ),
          explanationText("使用不可のときの色も指定可能"),
          ToggleButtons(
            children: [
              Icon(Icons.local_cafe),
              Icon(Icons.fastfood),
              Icon(Icons.cake)
            ],
            disabledColor: Colors.grey[300],
            disabledBorderColor: Colors.blueGrey,
            isSelected: _select,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
