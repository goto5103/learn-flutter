# #12 SliverList & SliverGrid

動画：https://www.youtube.com/watch?v=ORiTTaVY6mM

リファレンス：

- https://api.flutter.dev/flutter/widgets/SliverList-class.html
- https://api.flutter.dev/flutter/widgets/SliverGrid-class.html

## 概要

- カスタムスクロールビューの Sliver のリストとグリッド要素
- リストとグリッドをまとめてスクロールできる（ListView と GridView はそれ自体をスクロール不可）

## サンプル

List、Grid を表示
![image-20210725232055354](img/%2312_SliverList_SliverGrid/image-20210725232055354.png)

![image-20210725232113510](img/%2312_SliverList_SliverGrid/image-20210725232113510.png)
SliverAppBar を使用してヘッダを差し込むことも可能
![image-20210725232236659](img/%2312_SliverList_SliverGrid/image-20210725232236659.png)

![image-20210725232244010](img/%2312_SliverList_SliverGrid/image-20210725232244010.png)

![image-20210725232253137](img/%2312_SliverList_SliverGrid/image-20210725232253137.png)

## 派生元

SliverMultiBoxAdaptorWidget 　 → 　 SliverWithKeepAliveWidget 　 → 　 RenderObjectWidget
（SliverList、SliverGrid ともに同じ）
