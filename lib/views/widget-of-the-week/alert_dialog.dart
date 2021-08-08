import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetAlertDialog extends StatefulWidget {
  @override
  _WidgetAlertDialogState createState() => _WidgetAlertDialogState();
}

class _WidgetAlertDialogState extends State<WidgetAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ダイアログを表示する"),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false, // ダイアログの外枠を押したときに閉じない（Androidの場合バックキーで閉じれる）
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("AlertDialog!!"),
                    content: Text("content"),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("NO")),
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("YES"))
                    ],
                    elevation: 10, // z座標の変更
                    backgroundColor: Colors.white,
                    shape: Border(
                        bottom: BorderSide(color: Colors.red)), //shapeの変更
                  ),
                );
              },
              child: Text("show AlertDialog")),
        ],
      ),
    );
  }
}
