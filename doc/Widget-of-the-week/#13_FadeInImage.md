# #13 FadeInImage

動画：https://www.youtube.com/watch?v=pK738Pg9cxc

リファレンス：https://api.flutter.dev/flutter/widgets/FadeInImage-class.html

## 何をする Widget か？

- ネットワークから画像をダウンロードしている間、ローディングイメージを表示できる

## 使い方

```dart
// ローカルのアセットを使用する方法
FadeInImage.assetNetwork(
    placeholder: "assets/loading.gif",
    image:"https://xx/xx.png",
)
```

## サンプル

指定したローディング画像を表示
![image-20210726234910054](img/%2313_FadeInImage/image-20210726234910054.png)
ロードが終わるとネットワークの画像を表示
![image-20210726234913607](img/%2313_FadeInImage/image-20210726234913607.png)

## 内部

継承：StatelessWidget
