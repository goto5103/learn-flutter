# #12 SliverList & SliverGrid

動画：https://www.youtube.com/watch?v=ORiTTaVY6mM

リファレンス：

- https://api.flutter.dev/flutter/widgets/SliverList-class.html
- https://api.flutter.dev/flutter/widgets/SliverGrid-class.html

## 何をする Widget か？

- カスタムスクロールビューの Sliver のリストとグリッド要素
- リストとグリッドをまとめてスクロールできる（ListView と GridView はそれ自体をスクロール不可）

## 使い方

```dart
// ・・・省略
return Scaffold(
      appBar: AppBar(
        title: Text("SliverList&SliverGrid"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          // リスト
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                color: Colors.red,
                height: 100,
                ),
                Container(
                color: Colors.purple,
                height: 100,
                ),
              ])
          ),
          // グリッド（横並び個数を指定する方法）
          SliverGrid.count(
            crossAxisCount: 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.purple,
              ),
            ]
          )
        ]
      )
);
```

## サンプル

List、Grid を表示
![image-20210725232055354](img/%2312_SliverList_SliverGrid/image-20210725232055354.png)

![image-20210725232113510](img/%2312_SliverList_SliverGrid/image-20210725232113510.png)
SliverAppBar を使用してヘッダを差し込むことも可能
![image-20210725232236659](img/%2312_SliverList_SliverGrid/image-20210725232236659.png)

![image-20210725232244010](img/%2312_SliverList_SliverGrid/image-20210725232244010.png)

![image-20210725232253137](img/%2312_SliverList_SliverGrid/image-20210725232253137.png)

## 内部

継承：SliverMultiBoxAdaptorWidget 　 → 　 SliverWithKeepAliveWidget 　 → 　 RenderObjectWidget
（SliverList、SliverGrid ともに同じ）
