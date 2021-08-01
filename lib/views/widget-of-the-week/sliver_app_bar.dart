import 'package:flutter/material.dart';

class WidgetSliverAppBar extends StatefulWidget {
  @override
  _WidgetSliverAppBarState createState() => _WidgetSliverAppBarState();
}

class _WidgetSliverAppBarState extends State<WidgetSliverAppBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBarパラメータには使用されず、CustomScrollViewとともに使われる
      // appBar: AppBar(
      //   title: Text("SliverAppBar"),
      //   centerTitle: true,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // 上に向かってスクロールする際に、スクロールと同時にアプリバーを表示するかどうか。falseにするとアプリバーの位置まで到達しないとアプリバーは表示されない
            floating:true, 
            // スクロール時、アプリバーを表示するかどうか。falseの場合、スクロールしたときにアプリバーは非表示になる。trueの場合は、タイトルだけのアプリバーが残る。
            pinned:false, 
            // アプリバーをスナップ（少し表示されたら自動で全表示）する。floatingをtrueにする必要がある。
            snap: true, 
            backgroundColor: Colors.amber, // 背景色
            expandedHeight: 160, // アプリバーのサイズ（最大）
            // ツールバーとタブバーの後ろにスタックされるウィジェット
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
            // title: Text("SliverAppBar"), // flexibleSpaceと二重で指定できるが、両方表示されてしまうため、どちらかでよい
            // アプリバーの下にTabバーを表示する場合bottomに指定する（コメントアウトを外せば動く）
            // bottom: PreferredSize(
            //   preferredSize: Size(50.0, 100.0),
            //   child: Container(
            //     child: TabBar(
            //       tabs: [
            //         Tab(text: "A",icon: Icon(Icons.access_alarm)),
            //         Tab(text: "B",icon: Icon(Icons.accessible_forward))
            //       ],
            //       controller: _tabController,
            //     ),
            //   ),
            // ),
          ),
          // SliverToBoxAdapterはSliver用の単一のボックスウィジェット
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          // SliverListはSliver用のリスト
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
