import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAboutDialog extends StatefulWidget {
  @override
  _WidgetAboutDialogState createState() => _WidgetAboutDialogState();
}

class _WidgetAboutDialogState extends State<WidgetAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog"),
        centerTitle: true,
      ),
      body: explanationText(
          "AboutDialogは自分で表示してもよいが、showAboutDialogメソッドが用意されている"),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'showAboutDialog()呼び出し',
          ),
        ],
        currentIndex: 0,
        onTap: _onTaped,
      ),
    );
  }

  _onTaped(value) {
    showAboutDialog(
        context: context,
        applicationVersion: "0.0.0",
        applicationIcon: Image.asset(
          "assets/megane.png",
          width: 100,
        ),
        children: [
          Container(
            width: 100,
            color: Colors.amber,
            child: Text("test"),
          )
        ]);
  }
}
