# #14 StreamBuilder

動画：https://www.youtube.com/watch?v=MkKEWHfy99Y

リファレンス：https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html

## 何をする Widget か？

- 非同期データストリームをサポートする
- 非同期で受け取ったデータを Widget として追加していくことができる

## 使い方

```dart
StreamBuilder<int>(
  stream: _bids,
  // streamのデータを使用してWidgetビルド
  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
    List<Widget> children;

    if (snapshot.hasError) {
      children = _errorChildren(snapshot);
    } else {
      switch (snapshot.connectionState) {
        // 接続なし
        case ConnectionState.none:
          children = _noneChildren();
          break;
        // 待機中
        case ConnectionState.waiting:
          children = _waitingChildren();
          break;
        // 接続中
        case ConnectionState.active:
          children = _activeChildren(snapshot);
          break;
        // 完了
        case ConnectionState.done:
          children = _doneChildren(snapshot);
          break;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  },
)
```

## サンプル

![image-20210731113731028](img/%2314_StreamBuilder/image-20210731113731028.png)

![image-20210731113759496](img/%2314_StreamBuilder/image-20210731113759496.png)

![image-20210731113805984](img/%2314_StreamBuilder/image-20210731113805984.png)

## 内部

継承：StreamBuilderBase > StatefulWidget
