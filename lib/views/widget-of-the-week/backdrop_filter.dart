import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetBackdropFilter extends StatefulWidget {
  @override
  _WidgetBackdropFilterState createState() => _WidgetBackdropFilterState();
}

class _WidgetBackdropFilterState extends State<WidgetBackdropFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BackdropFilter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationRowHorizontal(
              Stack(
                children: [
                  image(),
                  Positioned.fill(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 10),
                          child: Container(
                            // color: Colors.black.withOpacity(0),
                            child: image(),
                          ))),
                ],
              ),
              "ImageFilter.blur:ぼかしフィルタを作成。（子はフィルタされない）"),
        ],
      ),
    );
  }
}
