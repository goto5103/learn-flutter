import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetImage extends StatefulWidget {
  @override
  _WidgetImageState createState() => _WidgetImageState();
}

class _WidgetImageState extends State<WidgetImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          explanationText(
              "プロジェクト内のリソースの表示（pubspec.ymlに登録必要）\n対応形式：JPEG、PNG、GIF、WebP、BMP、WBMP"),
          SizedBox(
            height: 100,
            child: Image.asset(
              "assets/buranko_girl_smile.png",
              semanticLabel: "label!",
            ),
          ),
          explanationText("ネットワーク上のリソースの表示（右側は読み込み完了まで進捗を出す）"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                child: Image.network(
                    "https://1.bp.blogspot.com/-pOL-P7Mvgkg/YEGQAdidksI/AAAAAAABdc0/SbD0lC_X8iY_t5xLFtQYFC3FHFgziBuzgCNcBGAsYHQ/s932/buranko_businesswoman_sad.png"),
              ),
              SizedBox(
                height: 70,
                width: 100,
                child: Image.network(
                  "https://1.bp.blogspot.com/-pOL-P7Mvgkg/YEGQAdidksI/AAAAAAABdc0/SbD0lC_X8iY_t5xLFtQYFC3FHFgziBuzgCNcBGAsYHQ/s932/buranko_businesswoman_sad.png",
                  loadingBuilder: (context, child, loadingProgress) {
                    //　完了まで進捗を表示できる
                    return loadingProgress == null
                        ? child
                        : LinearProgressIndicator();
                  },
                ),
              ),
            ],
          ),
          explanationText("オプションでサイズを指定したり、埋め方（fit）、色の指定も可能"),
          Image.asset(
            "assets/buranko_girl_smile.png",
            height: 50,
          ),
          SizedBox(
            width: 200,
            child: Image.asset(
              "assets/buranko_girl_smile.png",
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
          Image.asset(
            "assets/buranko_girl_smile.png",
            height: 70,
            color: Colors.red,
          ),
          Image.asset(
            "assets/buranko_girl_smile.png",
            height: 70,
            color: Colors.red,
            colorBlendMode: BlendMode.colorBurn,
          ),
        ],
      ),
    );
  }
}
