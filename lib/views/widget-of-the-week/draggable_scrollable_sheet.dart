import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDraggableScrollableSheet extends StatefulWidget {
  @override
  _WidgetDraggableScrollableSheetState createState() =>
      _WidgetDraggableScrollableSheetState();
}

class _WidgetDraggableScrollableSheetState
    extends State<WidgetDraggableScrollableSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableScrollableSheet"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("ウィジェットの表示領域内でスクロールさせる"),
          SizedBox(
            height: 200,
            child: DraggableScrollableSheet(
              initialChildSize: 1,
              minChildSize: 0.1,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  child: image(),
                  controller: scrollController,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
