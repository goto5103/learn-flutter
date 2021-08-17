import 'package:flutter/material.dart';
import 'package:lean/components/components.dart';

class WidgetPackage__SliverAppBar extends StatefulWidget {
  @override
  _WidgetPackage__SliverAppBarState createState() =>
      _WidgetPackage__SliverAppBarState();
}

class _WidgetPackage__SliverAppBarState
    extends State<WidgetPackage__SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text("Package__SliverAppBar"),
            stretch: true,
            stretchTriggerOffset: 100.0,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: image(),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 800, child: Text("""
SliverAppBarその２　ストレッチ（バージョンアップの追加機能）
（＃12時点で試してしまっているプロパティもある）
スクロールしたときに背景を拡大したり、ぼかしたりすることができる。
              """)),
          )
        ],
      ),
    );
  }
}
// https://medium.com/flutter-community/flutter-sliverappbar-with-stretchy-header-9ca04f316ff0
