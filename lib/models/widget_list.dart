import 'package:flutter/material.dart';
import 'package:lean/views/widget-of-the-week/Inherited_model.dart';
import 'package:lean/views/widget-of-the-week/Inherited_widget.dart';
import 'package:lean/views/widget-of-the-week/absorb_pointer.dart';
import 'package:lean/views/widget-of-the-week/align.dart';
import 'package:lean/views/widget-of-the-week/animatedIcon.dart';
import 'package:lean/views/widget-of-the-week/animated_builder.dart';
import 'package:lean/views/widget-of-the-week/animated_container.dart';
import 'package:lean/views/widget-of-the-week/animated_list.dart';
import 'package:lean/views/widget-of-the-week/animated_opacity.dart';
import 'package:lean/views/widget-of-the-week/animated_padding.dart';
import 'package:lean/views/widget-of-the-week/animated_positioned.dart';
import 'package:lean/views/widget-of-the-week/animated_switcher.dart';
import 'package:lean/views/widget-of-the-week/backdrop_filter.dart';
import 'package:lean/views/widget-of-the-week/clip_r_rect.dart';
import 'package:lean/views/widget-of-the-week/constrained_box.dart';
import 'package:lean/views/widget-of-the-week/custom_paint.dart';
import 'package:lean/views/widget-of-the-week/dismissible.dart';
import 'package:lean/views/widget-of-the-week/draggable.dart';
import 'package:lean/views/widget-of-the-week/expanded.dart';
import 'package:lean/views/widget-of-the-week/fadeInImage.dart';
import 'package:lean/views/widget-of-the-week/fadeTransition.dart';
import 'package:lean/views/widget-of-the-week/fitted_box.dart';
import 'package:lean/views/widget-of-the-week/flexible.dart';
import 'package:lean/views/widget-of-the-week/floating_action_button.dart';
import 'package:lean/views/widget-of-the-week/fractionally_sized_box.dart';
import 'package:lean/views/widget-of-the-week/future_builder.dart';
import 'package:lean/views/widget-of-the-week/hero.dart';
import 'package:lean/views/widget-of-the-week/indexed_stack.dart';
import 'package:lean/views/widget-of-the-week/layout_builder.dart';
import 'package:lean/views/widget-of-the-week/limited_box.dart';
import 'package:lean/views/widget-of-the-week/media_query.dart';
import 'package:lean/views/widget-of-the-week/opacity.dart';
import 'package:lean/views/widget-of-the-week/page_view.dart';
import 'package:lean/views/widget-of-the-week/placeholder.dart';
import 'package:lean/views/widget-of-the-week/positioned.dart';
import 'package:lean/views/widget-of-the-week/reorderable_list_view.dart';
import 'package:lean/views/widget-of-the-week/rich_text.dart';
import 'package:lean/views/widget-of-the-week/safearea.dart';
import 'package:lean/views/widget-of-the-week/semantics.dart';
import 'package:lean/views/widget-of-the-week/sized_box.dart';
import 'package:lean/views/widget-of-the-week/sliver_app_bar.dart';
import 'package:lean/views/widget-of-the-week/sliver_list__sliver_grid.dart';
import 'package:lean/views/widget-of-the-week/spacer.dart';
import 'package:lean/views/widget-of-the-week/aspect_ratio.dart';
import 'package:lean/views/widget-of-the-week/stack.dart';
import 'package:lean/views/widget-of-the-week/stream_builder.dart';
import 'package:lean/views/widget-of-the-week/table.dart';
import 'package:lean/views/widget-of-the-week/tooltip.dart';
import 'package:lean/views/widget-of-the-week/transform.dart';
import 'package:lean/views/widget-of-the-week/valueListenable_builder.dart';
import 'package:lean/views/widget-of-the-week/wrap.dart';

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
    WidgetClipRRect(),
    WidgetHero(),
    WidgetCustomPaint(),
    WidgetTooltip(),
    WidgetFittedBox(),
    WidgetLayoutBuilder(),
    WidgetAbsorbPointer(),
    WidgetTransform(),
    WidgetBackdropFilter(),
    WidgetAlign(),
    WidgetPositioned(),
    WidgetAnimatedBuilder(),
    WidgetDismissible(),
    WidgetSizedBox(),
    WidgetValueListenableBuilder(),
    WidgetDraggable(),
    WidgetAnimatedList(),
    WidgetFlexible(),
    WidgetMediaQuery(),
    WidgetSpacer(),
    WidgetInheritedWidget(),
    WidgetAnimatedIcon(),
    WidgetAspectRatio(),
    WidgetLimitedBox(),
    WidgetPlaceholder(),
    WidgetRichText(),
    WidgetReorderableListView(),
    WidgetAnimatedSwitcher(),
    WidgetAnimatedPositioned(),
    WidgetAnimatedPadding(),
    WidgetIndexedStack(),
    WidgetSemantics(),
    WidgetConstrainedBox(),
    WidgetStack(),
    WidgetAnimatedOpacity(),
    WidgetFractionallySizedBox(),
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
