# #8 FloatingActionButton

動画：https://www.youtube.com/watch?v=2uaoEDOgk_I

リファレンス：https://api.flutter.dev/flutter/material/FloatingActionButton-class.html

## 何をする Widget か？

- フローティングアクションボタンを追加する
- ボトムナビゲーションバーに埋め込むこともできる

## 使い方

```dart
// 通常のFAB
floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () {},
)

// ラベルとアイコンを配置したFAB
floatingActionButton: FloatingActionButton.extended(
    label: const Text("label!"),
    icon: Icon(Icons.add),
    onPressed: () {},
),
```

## サンプル

![image-20210722112418462](img/%238_FloatingActionButton/image-20210722112418462.png)

## 内部

継承：StatelessWidget
