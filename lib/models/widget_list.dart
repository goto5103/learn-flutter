class WidgetList {
  static List<String> getList() {
    return Widgets.values.map((value) => value.toString().split(".")[1]).toList();
  }
}

enum Widgets {
  SafeArea,
  Expanded,
  Wrap,
  AnimatedContainer,
  Opacity,
  FutureBuilder,
  FadeTransition,
  FloatingActionButton
}
