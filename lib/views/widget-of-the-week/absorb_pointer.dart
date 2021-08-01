import 'package:flutter/material.dart';

class WidgetAbsorbPointer extends StatefulWidget {
  @override
  _WidgetAbsorbPointerState createState() => _WidgetAbsorbPointerState();
}

class _WidgetAbsorbPointerState extends State<WidgetAbsorbPointer> {
  Color backgroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AbsorbPointer(
          absorbing: true,
          child: ElevatedButton(
            child: Text("押せない"),
            onPressed: (() => print("tap")),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith(this.backgroundColor)),
          )),
          AbsorbPointer(
          absorbing: false,
          child: ElevatedButton(
            child: Text("押せる"),
            onPressed: (() => print("tap")),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith(this.backgroundColor)),
          )),
        ],
      )
    );
  }
}
