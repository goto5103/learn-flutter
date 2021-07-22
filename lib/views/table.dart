import 'package:flutter/material.dart';

class WidgetTable extends StatefulWidget {
  @override
  _WidgetTableState createState() => _WidgetTableState();
}

class _WidgetTableState extends State<WidgetTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Table"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Table(
              // デフォルトのセル位置
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              // 罫線
              border: TableBorder.all(),
              children: [
                TableRow(
                    // 背景色
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    children: [
                      // 列数は揃える必要がある
                      Container(
                        color: Colors.amber,
                        height: 100,
                        child: Text("A"),
                      ),
                      Center(
                        child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 50,
                        child: Text("B"),
                      ),
                      )
                      ,
                      Container(
                        color: Colors.amber,
                        height: 150,
                      )
                    ]),
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      color: Colors.amber,
                      height: 40,
                      child: Text("TableCellVerticalAlignment.top"),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      color: Colors.amber,
                      height: 50,
                      child: Text("TableCellVerticalAlignment.middle"),
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    height: 100,
                  )
                ])
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
            ),
            Table(
              border: TableBorder.all(),
              columnWidths: <int, TableColumnWidth>{
                // 固有サイズ　自動で広げたりしない
                0: IntrinsicColumnWidth(),
                // flex 自動で余白分広げる
                1: FlexColumnWidth(),
                // flex 引数にしてすると引数分の要素数の幅を取る
                2: FlexColumnWidth(2),
              },
              children: [
                TableRow(children: [
                  TableCell(child: Text("A")),
                  TableCell(child: Text("B")),
                  TableCell(child: Text("C")),
                ])
              ],
            )
          ],
        ));
  }
}
