import 'package:flutter/material.dart';

class WidgetAnimatedIcon extends StatefulWidget {
  @override
  _WidgetAnimatedIconState createState() => _WidgetAnimatedIconState();
}

class _WidgetAnimatedIconState extends State<WidgetAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIcon"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text("アニメーションアイコン　下のボタンで動作"),
          ),
          Table(
            children: <TableRow>[
              TableRow(children: [
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.add_event,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.arrow_menu,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.close_menu,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.ellipsis_search,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.event_add,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.home_menu,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.list_view,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_arrow,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_home,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.pause_play,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.search_ellipsis,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                    child: Column(
                  children: [
                    Center(
                      child: AnimatedIcon(
                        icon: AnimatedIcons.view_list,
                        progress: _controller,
                      ),
                    ),
                    Center(
                      child: Text("add_event"),
                    )
                  ],
                )),
                TableCell(
                  child: Container(),
                ),
                TableCell(child: Container(),)

              ])
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () async {
          await _controller.forward();
          await Future.delayed(Duration(seconds: 2));
          await _controller.reverse();
        },
      ),
    );
  }
}
