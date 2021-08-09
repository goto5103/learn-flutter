import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetDataTable extends StatefulWidget {
  @override
  _WidgetDataTableState createState() => _WidgetDataTableState();
}

class _WidgetDataTableState extends State<WidgetDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("データテーブルの作成"),
          DataTable(columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("year")),
          ], rows: [
            DataRow(cells: [DataCell(Text("foo")), DataCell(Text("2020"))]),
            DataRow(cells: [DataCell(Text("bar")), DataCell(Text("2020"))]),
          ]),
          explanationText("数値のために列を左揃えにできる"),
          SizedBox(
            width: 200,
            child:  DataTable(
            columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("year"),numeric: true),
          ], rows: [
            DataRow(cells: [DataCell(Text("foo")), DataCell(Text("2020"))]),
            DataRow(cells: [DataCell(Text("bar")), DataCell(Text("2020"))]),
          ]),
          ),
        ],
      ),
    );
  }
}
