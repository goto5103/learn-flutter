# #15 InheritedModel

動画：https://www.youtube.com/watch?v=ml5uefGgkaA&t=13s

リファレンス：https://api.flutter.dev/flutter/widgets/InheritedModel-class.html

## 何をする Widget か？

- 祖先 Widget が持つデータを子孫 Widget が継承する
- 親が変更された場合、Widget 再作成の必要なものを判断する
- InheritedWidget と違い、各子孫 Widget に対して再構築を判断するため、必要な子孫だけ再ビルドされる

## 使い方

```dart
class MyModel extends InheritedModel<String> {
  // 呼び出し側　MyModel.of(context, 'foo')は、MyModelのfooアスペクトが変更されたときのみcontextが再構築される
  static MyModel of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<MyModel>(context, aspect: aspect);
  }
  MyModel({ this.foo, this.bar, Widget child }) : super(child: child);

  final int foo;
  final int bar;

  // 継承されたモデルが再構築されたとき、再構築しなければならないか判断する
  @override
  bool updateShouldNotify(MyModel old) {
    return foo != old.foo || bar != old.bar;
  }

  // 継承されたモデルが再構築されたとき、再構築しなければならないか判断する
  @override
  bool updateShouldNotifyDependent(MyModel old, Set<String> aspects) {
    return (foo != old.foo && aspects.contains('foo'))
        || (bar != old.bar && aspects.contains('bar'))
  }
}
```

## サンプル

保留

## 内部

継承：InheritedWidget
