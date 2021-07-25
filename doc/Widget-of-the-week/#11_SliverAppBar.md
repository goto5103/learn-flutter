# #11 SliverAppBar

動画：https://www.youtube.com/watch?v=R9C5KMJKluE

リファレンス：https://api.flutter.dev/flutter/material/SliverAppBar-class.html

## 何をする Widget か？

- アプリバー（ヘッダ）にカスタムスクロールの動作を与える
- アプリバーの高さを変えたり画像を差し込んだりできる
- スクロール時に隠したり表示したりできる

※基本的なレイアウトを作成する場合は、これは必要ない。

## 使い方

```dart
return Scaffold(
    // appBarパラメータには使用されず、CustomScrollViewとともに使われる
    body: CustomScrollView(
        slivers: [
            SliverAppBar(
                // 上に向かってスクロールする際に、スクロールと同時にアプリバーを表示するかどうか。falseにするとアプリバーの位置まで到達しないとアプリバーは表示されない
                floating:true,
                // スクロール時、アプリバーを表示するかどうか。falseの場合、スクロールしたときにアプリバーは非表示になる。trueの場合は、タイトルだけのアプリバーが残る。
                pinned:false,
                // アプリバーをスナップ（少し表示されたら自動で全表示）する。floatingをtrueにする必要がある。
                snap: true,
                title: Text("SliverAppBar")
            )
            // ...コンテンツ
)
```

## サンプル

![image-20210725164018074](img/%2311_SliverAppBar/image-20210725164018074.png)

![image-20210725164056382](img/%2311_SliverAppBar/image-20210725164056382.png)

![image-20210725164114344](img/%2311_SliverAppBar/image-20210725164114344.png)



## 内部

継承：StatefulWidget
