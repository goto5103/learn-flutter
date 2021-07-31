import 'package:flutter/material.dart';
import 'package:lean/views/Inherited_model.dart';
import 'package:lean/views/animated_container.dart';
import 'package:lean/views/expanded.dart';
import 'package:lean/views/fadeInImage.dart';
import 'package:lean/views/fadeTransition.dart';
import 'package:lean/views/floating_action_button.dart';
import 'package:lean/views/future_builder.dart';
import 'package:lean/views/opacity.dart';
import 'package:lean/views/page_view.dart';
import 'package:lean/views/safearea.dart';
import 'package:lean/views/sliver_app_bar.dart';
import 'package:lean/views/sliver_list__sliver_grid.dart';
import 'package:lean/views/stream_builder.dart';
import 'package:lean/views/table.dart';
import 'package:lean/views/wrap.dart';

class WidgetListRow {
  String widgetName; // 試すWidgetの名前
  String path; // widgetを試すための画面のパス
  bool isDisplay; // 表示／非表示
  WidgetBuilder widgetBuilder; // routesに渡す用
  int number; // Widget of the week のバックナンバー
  String displayName; // 一覧画面に表示する際の名前

  WidgetListRow({
    Widget widget,
    this.number,
    this.isDisplay: true,
  }) {
    this.widgetName = widget.toString().replaceAll('Widget', '');
    this.widgetBuilder = (BuildContext context) => widget;
    this.path = "/${this.widgetName}";
    this.displayName = "#${this.number} ${this.widgetName}";
  }
}

class WidgetList {
  List<WidgetListRow> _widgetList;
  // widget of the week のwidgetを試すためのサンプルWidget達
  List<Widget> _list = [
    WidgetSafeArea(),
    WidgetExpanded(),
    WidgetWrap(),
    WidgetAnimatedContainer(),
    WidgetOpacity(),
    WidgetFutureBuilder(),
    WidgetFadeTransition(),
    WidgetFloatingActionButton(),
    WidgetPageView(),
    WidgetTable(),
    WidgetSliverAppBar(),
    WidgetSliverList_SliverGrid(),
    WidgetFadeInImage(),
    WidgetStreamBuilder(),
    WidgetInheritedModel(),
    // WidgetClipRRect(),
    // WidgetHero(),
    // WidgetCustomPaint(),
    // WidgetTooltip(),
    // WidgetFittedBox(),
    // WidgetLayoutBuilder(),
    // WidgetAbsorbPointer(),
    // WidgetTransform(),
    // WidgetBackdropFilter(),
    // WidgetAlign(),
    // WidgetPositioned(),
    // WidgetAnimatedBuilder(),
    // WidgetDismissible(),
    // WidgetSizedBox(),
    // WidgetValueListenableBuilder(),
    // WidgetDraggable(),
    // WidgetAnimatedList(),
    // WidgetFlexible(),
    // WidgetMediaQuery(),
    // WidgetSpacer(),
    // WidgetInheritedWidget(),
    // WidgetAnimatedIcon(),
    // WidgetAspectRatio(),
    // WidgetLimitedBox(),
    // WidgetPlaceholder(),
    // WidgetRichText(),
    // WidgetReorderableListView(),
    // WidgetAnimatedSwitcher(),
    // WidgetAnimatedPositioned(),
    // WidgetAnimatedPadding(),
    // WidgetIndexedStack(),
    // WidgetSemantics(),
    // WidgetConstrainedBox(),
    // WidgetStack(),
    // WidgetAnimatedOpacity(),
    // WidgetFractionallySizedBox(),
    // WidgetListView(),
    // WidgetListTile(),
    // WidgetContainer(),
    // WidgetSelectableText(),
    // WidgetDataTable(),
    // WidgetSlider_RangeSlider_CupertinoSlider(),
    // WidgetAlertDialog(),
    // WidgetAnimatedCrossFade(),
    // WidgetDraggableScrollableSheet(),
    // WidgetColorFiltered(),
    // WidgetToggleButtons(),
    // WidgetCupertinoActionSheet(),
    // WidgetTweenAnimationBuilder(),
    // WidgetImage(),
    // WidgetDefaultTabController_TabBar(),
    // WidgetDrawer(),
    // WidgetSnackBar(),
    // WidgetListWheelScrollView(),
    // WidgetShaderMask(),
    // WidgetNotificationListener(),
    // WidgetBuilder(),
    // WidgetClipPath(),
    // WidgetCircularProgressIndicator_LinearProgressIndicator(),
    // WidgetDivider(),
    // WidgetIgnorePointer(),
    // WidgetCupertinoActivityIndicator(),
    // WidgetClipOval(),
    // WidgetAnimatedWidget(),
    // WidgetPadding(),
    // WidgetCheckboxListTile(),
    // WidgetAboutDialog(),
    // WidgetPackage__async(),
    // WidgetPackage__url_launcher(),
    // WidgetPackage__sqflite(),
    // WidgetPackage__SliverAppBar(),
    // WidgetInteractiveViewer(),
    // WidgetGridView(),
    // WidgetSwitchListTile(),
    // WidgetPackage__location(),
    // WidgetPackage__Device_info(),
    // WidgetImageFiltered(),
    // WidgetPhysicalModel(),
    // WidgetPackage__Animations(),
    // WidgetPackage__flutter_slidable(),
    // WidgetRotatedBox(),
    // WidgetExpansionPanel(),
    // WidgetScrollbar(),
    // WidgetPackage__connectivity(),
    // WidgetFlutterLogo(),
    // WidgetPackage__animated_text_kit(),
    // WidgetMouseRegion(),
    // WidgetPackage__sensors_plus(),
    // 追加するまではコメントアウト
  ];
  WidgetList() {
    this._widgetList = createWidgetList();
  }

  List<WidgetListRow> createWidgetList() {
    List<WidgetListRow> rows = [];
    _list.asMap().forEach((int index, Widget widget) {
      rows.add(new WidgetListRow(widget: widget, number: index + 1));
    });
    return rows;
  }

  /// ルーティング登録用のMAPを返す
  Map<String, WidgetBuilder> getRoutes() {
    Map<String, WidgetBuilder> map = {};
    this._widgetList.where((value) => value.isDisplay).forEach((value) {
      map.addAll({value.path: value.widgetBuilder});
    });
    return map;
  }

  List<WidgetListRow> getWidgetList() {
    // return this._widgetList.map((e) => e.displayName).toList();
    return _widgetList;
  }
}
