# #10 Table

動画：https://www.youtube.com/watch?v=_lbE0wsVZSw

リファレンス：https://api.flutter.dev/flutter/widgets/Table-class.html

## 何をする Widget か？

- Table を表示する
- Widget のサイズが様々な場合にも対応する（Column、Row を駆使して行列をカスタマイズする必要なし）

## 使い方

```dart
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
)
```

## サンプル

![image-20210722165613989](img/%2310_Table/image-20210722165613989.png)

## 内部

継承：RenderObjectWidget
