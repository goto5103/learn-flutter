import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetTweenAnimationBuilder extends StatefulWidget {
  @override
  _WidgetTweenAnimationBuilderState createState() =>
      _WidgetTweenAnimationBuilderState();
}

class _WidgetTweenAnimationBuilderState
    extends State<WidgetTweenAnimationBuilder> {
  String msg = "赤から";
  Color color = Color(0x00000000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TweenAnimationBuilder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("カスタム暗黙的アニメーション"),
          SizedBox(
            height: 200,
            child: TweenAnimationBuilder<Color>(
              tween: ColorTween(begin: Colors.red, end: Colors.blue),
              duration: const Duration(milliseconds: 2000),
              child: image(),
              builder: (context, Color value, child) {
                return ColorFiltered(
                    colorFilter: ColorFilter.mode(value, BlendMode.modulate),
                    child:
                        child); // childにウィジェットを直接指定可能だが、パフォーマンス的にこうしたほうがよい（ウィジェットツリー全体を再構築せずに済む）
              },
              onEnd: () {
                setState(() {
                  msg = "青へ";
                });
              },
            ),
          ),
          Text(msg),
          explanationText("終了後に別の値を渡すことで次のアニメーションを実施できる"),
          SizedBox(
            height: 200,
            child: TweenAnimationBuilder<Color>(
              tween: ColorTween(begin: Colors.red, end: color),
              duration: const Duration(milliseconds: 1),
              child: image(),
              builder: (BuildContext _, Color value, Widget __) {
                return ColorFiltered(
                    colorFilter: ColorFilter.mode(value, BlendMode.modulate),
                    child:
                        __); // childにウィジェットを直接指定可能だが、パフォーマンス的にこうしたほうがよい（ウィジェットツリー全体を再構築せずに済む）
              },
              onEnd: () {
                setState(() {
                  color = Color(color.value + 10000000); //これは良くない例
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
