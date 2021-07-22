import 'package:flutter/material.dart';

class WidgetFloatingActionButton extends StatefulWidget {
  @override
  _WidgetFloatingActionButtonState createState() =>
      _WidgetFloatingActionButtonState();
}

class _WidgetFloatingActionButtonState
    extends State<WidgetFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
        centerTitle: true,
      ),
      // ラベルとアイコンを配置したFAB
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("label!"),
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
      // 通常のFAB
      /*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      */
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(
          height: 50,
        ),
      ),
      // FABの位置を決める
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
