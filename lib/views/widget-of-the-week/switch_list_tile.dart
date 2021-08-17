import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetSwitchListTile extends StatefulWidget {
  @override
  _WidgetSwitchListTileState createState() => _WidgetSwitchListTileState();
}

class _WidgetSwitchListTileState extends State<WidgetSwitchListTile> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchListTile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ListTileやRadioListTileとほぼ同じ"),
          SwitchListTile(
            title: Text("hoge"),
            secondary: Icon(Icons.ac_unit),
            value: _toggled,
            onChanged: (value) {
              setState(() {
                _toggled = !_toggled;
              });
            },
          ),
          explanationText("コントロールの色変更"),
          SwitchListTile(
            title: Text("hoge"),
            secondary: Icon(Icons.ac_unit),
            value: _toggled,
            onChanged: (value) {
              setState(() {
                _toggled = !_toggled;
              });
            },
            activeColor: Colors.lightGreen,
            activeTrackColor: Colors.pink,
            inactiveThumbColor: Colors.amber,
            inactiveTrackColor: Colors.indigo,
          ),
          explanationText("SwitchListTileはコントロールに画像を追加することができる"),
          SwitchListTile(
            title: Text("hoge"),
            secondary: Icon(Icons.ac_unit),
            value: _toggled,
            onChanged: (value) {
              setState(() {
                _toggled = !_toggled;
              });
            },
            activeThumbImage: AssetImage("assets/megane.png"),
            inactiveThumbImage: AssetImage("assets/buranko_girl_smile.png"),
          ),
        ],
      ),
    );
  }
}
