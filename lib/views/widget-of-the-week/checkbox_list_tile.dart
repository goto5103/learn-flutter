import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetCheckboxListTile extends StatefulWidget {
  @override
  _WidgetCheckboxListTileState createState() => _WidgetCheckboxListTileState();
}

class _WidgetCheckboxListTileState extends State<WidgetCheckboxListTile> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxListTile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("チェックボックスとリストタイルの組み合わせ"),
          CheckboxListTile(
            title: Text("title"),
            secondary: Icon(Icons.beach_access),
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
          explanationText("チェックボックスの位置を入れ替え可能"),
          CheckboxListTile(
            title: Text("title"),
            secondary: Icon(Icons.beach_access),
            controlAffinity: ListTileControlAffinity.leading,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
          explanationText("チェックボックスの色を変更可能"),
          CheckboxListTile(
            title: Text("title"),
            secondary: Icon(Icons.beach_access),
            controlAffinity: ListTileControlAffinity.trailing,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
          )
        ],
      ),
    );
  }
}
