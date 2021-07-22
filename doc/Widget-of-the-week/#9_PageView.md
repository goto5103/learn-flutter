# #9 PageView

動画：https://www.youtube.com/watch?v=J1gE9xvph-A

リファレンス：https://api.flutter.dev/flutter/widgets/PageView-class.html

## 何をする Widget か？

- 複数のページをスワイプして表示する

## 使い方

```dart
// スワイプを検出するためのコントローラー
final _controller = PageController(
    // 開始ページの設定
    initialPage: 0);

PageView(
    // horizontal　横方向
    // vertical　縦方向
    scrollDirection: Axis.horizontal,
    controller: _controller,
    children: [
        Center(
            child: Text("1"),
        ),
        Center(
            child: Text("2"),
        )
    ]
)
```

## サンプル

![image-20210722120946834](img/%239_PageView/image-20210722120946834.png)

![image-20210722121111326](img/%239_PageView/image-20210722121111326.png)

![image-20210722120955020](img/%239_PageView/image-20210722120955020.png)

## 内部

継承：StatefulWidget
