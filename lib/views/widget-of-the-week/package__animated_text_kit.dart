import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__animated_text_kit extends StatefulWidget {
  @override
  _WidgetPackage__animated_text_kitState createState() =>
      _WidgetPackage__animated_text_kitState();
}

class _WidgetPackage__animated_text_kitState
    extends State<WidgetPackage__animated_text_kit> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Package__animated_text_kit"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.cyan,
          width: double.infinity,
          child: Column(
            children: [
              explanationText("テキストのアニメーション簡単につけることができる。下記は一部の例"),
              SizedBox(
                height: 100,
                width: 250,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(width: 20.0, height: 100.0),
                    const Text(
                      'Be',
                      style: TextStyle(fontSize: 43.0),
                    ),
                    const SizedBox(width: 20.0, height: 100.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Horizon',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('AWESOME'),
                          RotateAnimatedText('OPTIMISTIC'),
                          RotateAnimatedText('DIFFERENT'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('do IT!'),
                      FadeAnimatedText('do it RIGHT!!'),
                      FadeAnimatedText('do it RIGHT NOW!!!'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('It is not enough to do your best,'),
                      TyperAnimatedText('you must know what to do,'),
                      TyperAnimatedText('and then do your best'),
                      TyperAnimatedText('- W.Edwards Deming'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Agne',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Discipline is the best tool'),
                      TypewriterAnimatedText('Design first, then code'),
                      TypewriterAnimatedText(
                          'Do not patch bugs out, rewrite them'),
                      TypewriterAnimatedText(
                          'Do not test bugs out, design them out'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'Canterbury',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText('Think'),
                      ScaleAnimatedText('Build'),
                      ScaleAnimatedText('Ship'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 250.0,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Bill Gates',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
//https://pub.dev/packages/animated_text_kit
