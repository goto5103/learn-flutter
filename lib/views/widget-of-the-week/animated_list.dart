import 'package:flutter/material.dart';

class WidgetAnimatedList extends StatefulWidget {
  @override
  _WidgetAnimatedListState createState() => _WidgetAnimatedListState();
}

class _WidgetAnimatedListState extends State<WidgetAnimatedList> {
  final _items = ["a","b","c","d"];

  final _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(margin: EdgeInsets.all(10),
          child: Text("タップすると消えるリスト"),),
          Expanded(child:
          AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_items[index], animation);
            },
          )
          )

        ],
      ),
    );
  }

  Widget _buildItem(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
        onTap: () {
          // 内部データを消す
          var removeIndex = _items.indexOf(item);
          String removedItem = _items.removeAt(removeIndex);

          // 削除アニメーションで利用されるウィジェットのビルダ関数
          // 削除前のものと同じ描画内容にするといい感じに消える
          AnimatedListRemovedItemBuilder builder = (context, animation) {
            return _buildItem(removedItem, animation);
          };

          // ウィジェット上から削除を実行する
          _listKey.currentState.removeItem(removeIndex, builder);
        },
      ),
    );
  }
}
