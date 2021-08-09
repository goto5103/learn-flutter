import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetCircularProgressIndicator_LinearProgressIndicator
    extends StatefulWidget {
  @override
  _WidgetCircularProgressIndicator_LinearProgressIndicatorState createState() =>
      _WidgetCircularProgressIndicator_LinearProgressIndicatorState();
}

class _WidgetCircularProgressIndicator_LinearProgressIndicatorState
    extends State<WidgetCircularProgressIndicator_LinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  double _prg = 0.0;
  AnimationController _animationController;
  Animation _colorTween;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _colorTween = _animationController
        .drive(ColorTween(begin: Colors.yellow, end: Colors.green));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircularProgressIndicator_LinearProgressIndicator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText("不確定型の進捗インジケータ。（不確定：残り時間を確定せずにただ実行中であることを示す）"),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
          ),
          LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
          ),
          explanationText("確定型の進捗インジケータ。（確定：実際のタスクなどの進行度を示す）"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    while (_prg < 1.0) {
                      await Future.delayed(Duration(milliseconds: 10));
                      setState(() {
                        _prg = _prg + 0.01;
                      });
                    }
                  },
                  child: Text("スタート")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _prg = 0;
                    });
                  },
                  child: Text("リセット"))
            ],
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
            value: _prg,
          ),
          LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
            value: _prg,
          ),
          explanationText("色を変化させることもできる"),
          CircularProgressIndicator(
            valueColor: _colorTween,
            backgroundColor: Colors.grey,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: _colorTween,
          ),
          CircularProgressIndicator(
            valueColor: _colorTween,
          ),
          LinearProgressIndicator(
            valueColor: _colorTween,
          ),
          explanationText("丸形の場合、太さを変更することができる"),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
            strokeWidth: 15,
          ),
        ],
      ),
    );
  }
}
