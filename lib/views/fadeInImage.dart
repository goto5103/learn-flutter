import 'package:flutter/material.dart';

class WidgetFadeInImage extends StatefulWidget {
  @override
  _WidgetFadeInImageState createState() => _WidgetFadeInImageState();
}

class _WidgetFadeInImageState extends State<WidgetFadeInImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            // ローカルのアセットを使用する方法
            child: FadeInImage.assetNetwork(
              placeholder: "assets/loading.gif",
              image:
                  "https://1.bp.blogspot.com/-gcS_1Jnz_3Q/X7zMYCwgUzI/AAAAAAABcak/QSFftjQ-BYUsusmJhWdJ_NU4uQ9hwpV0ACNcBGAsYHQ/s721/food_curry_mukashi_yellow.png",
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
