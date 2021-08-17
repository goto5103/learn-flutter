import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetExpansionPanel extends StatefulWidget {
  @override
  _WidgetExpansionPanelState createState() => _WidgetExpansionPanelState();
}

class _WidgetExpansionPanelState extends State<WidgetExpansionPanel> {
  List<bool> _isOpen = List.generate(2, (i) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          explanationText("展開して詳細を表示できるリスト"),
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text("testtesttest");
                  },
                  body: Text("testtesttesttesttesttesttesttesttest"),
                  isExpanded: _isOpen[0]),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text("TESTTESTTEST");
                  },
                  body: Text("TESTTESTTESTTESTTESTTESTTESTTESTTEST"),
                  isExpanded: _isOpen[1]),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _isOpen[panelIndex] = !isExpanded;
              });
            },
          ),
          explanationText(
              "ExpansionPanelListは、dividerColor、elevation、expandedHeaderPaddingでカスタム可能"),
          ExpansionPanelList(
            dividerColor: Colors.blueAccent,
            elevation: 12,
            expandedHeaderPadding: EdgeInsets.all(10),
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text("testtesttest");
                  },
                  body: Text("testtesttesttesttesttesttesttesttest"),
                  isExpanded: _isOpen[0]),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text("TESTTESTTEST");
                  },
                  body: Text("TESTTESTTESTTESTTESTTESTTESTTESTTEST"),
                  isExpanded: _isOpen[1]),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _isOpen[panelIndex] = !isExpanded;
              });
            },
            animationDuration: Duration(seconds: 5),
          )
        ],
      ),
    );
  }
}
