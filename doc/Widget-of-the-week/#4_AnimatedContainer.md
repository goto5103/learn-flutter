# #4 AnimatedContainer

動画：https://www.youtube.com/watch?v=yI-8QHpGIP4

リファレンス：https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html

## 何をする Widget か？

- 簡単にアニメーションを再現することができる
- 色、線、高さなどの様々なアニメーションを実装可能

## 使い方

AnimatedContainer に変数を指定し、setState で変更し再ビルドされると Widget が変化します。

```dart
class _SampleState extends State<WidgetAnimatedContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
// ~~~省略~~~

    AnimatedContainer(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: _borderRadius,
      ),
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    )
```

## サンプル

フローティングアクションボタンをタップするごとにランダムに色、幅、高さ、角の丸みが変化する。

![image-20210721212145899](img/%234_AnimatedContainer/image-20210721212145899.png)

![image-20210721212209555](img/%234_AnimatedContainer/image-20210721212209555.png)

## 内部

継承：ImplicitlyAnimatedWidget
