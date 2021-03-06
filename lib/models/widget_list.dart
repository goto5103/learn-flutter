import 'package:flutter/material.dart';
import 'package:lean/views/widget-of-the-week/Image.dart';
import 'package:lean/views/widget-of-the-week/Inherited_model.dart';
import 'package:lean/views/widget-of-the-week/Inherited_widget.dart';
import 'package:lean/views/widget-of-the-week/about_dialog.dart';
import 'package:lean/views/widget-of-the-week/absorb_pointer.dart';
import 'package:lean/views/widget-of-the-week/alert_dialog.dart';
import 'package:lean/views/widget-of-the-week/align.dart';
import 'package:lean/views/widget-of-the-week/animatedIcon.dart';
import 'package:lean/views/widget-of-the-week/animated_builder.dart';
import 'package:lean/views/widget-of-the-week/animated_container.dart';
import 'package:lean/views/widget-of-the-week/animated_cross_fade.dart';
import 'package:lean/views/widget-of-the-week/animated_list.dart';
import 'package:lean/views/widget-of-the-week/animated_opacity.dart';
import 'package:lean/views/widget-of-the-week/animated_padding.dart';
import 'package:lean/views/widget-of-the-week/animated_positioned.dart';
import 'package:lean/views/widget-of-the-week/animated_switcher.dart';
import 'package:lean/views/widget-of-the-week/animated_widget.dart';
import 'package:lean/views/widget-of-the-week/backdrop_filter.dart';
import 'package:lean/views/widget-of-the-week/checkbox_list_tile.dart';
import 'package:lean/views/widget-of-the-week/circular_progress_indicator__linear_progress_indicator.dart';
import 'package:lean/views/widget-of-the-week/clip_oval.dart';
import 'package:lean/views/widget-of-the-week/clip_path.dart';
import 'package:lean/views/widget-of-the-week/clip_r_rect.dart';
import 'package:lean/views/widget-of-the-week/color_filtered.dart';
import 'package:lean/views/widget-of-the-week/constrained_box.dart';
import 'package:lean/views/widget-of-the-week/container.dart';
import 'package:lean/views/widget-of-the-week/cupertino_action_sheet.dart';
import 'package:lean/views/widget-of-the-week/cupertino_activity_indicator.dart';
import 'package:lean/views/widget-of-the-week/custom_paint.dart';
import 'package:lean/views/widget-of-the-week/data_table.dart';
import 'package:lean/views/widget-of-the-week/default_tab_controller__tabBar.dart';
import 'package:lean/views/widget-of-the-week/dismissible.dart';
import 'package:lean/views/widget-of-the-week/divider.dart';
import 'package:lean/views/widget-of-the-week/draggable.dart';
import 'package:lean/views/widget-of-the-week/draggable_scrollable_sheet.dart';
import 'package:lean/views/widget-of-the-week/drawer.dart';
import 'package:lean/views/widget-of-the-week/expanded.dart';
import 'package:lean/views/widget-of-the-week/expansion_panel.dart';
import 'package:lean/views/widget-of-the-week/fadeInImage.dart';
import 'package:lean/views/widget-of-the-week/fadeTransition.dart';
import 'package:lean/views/widget-of-the-week/fitted_box.dart';
import 'package:lean/views/widget-of-the-week/flexible.dart';
import 'package:lean/views/widget-of-the-week/floating_action_button.dart';
import 'package:lean/views/widget-of-the-week/flutter_fogo.dart';
import 'package:lean/views/widget-of-the-week/fractionally_sized_box.dart';
import 'package:lean/views/widget-of-the-week/future_builder.dart';
import 'package:lean/views/widget-of-the-week/grid_view.dart';
import 'package:lean/views/widget-of-the-week/hero.dart';
import 'package:lean/views/widget-of-the-week/ignore_pointer.dart';
import 'package:lean/views/widget-of-the-week/image_filtered.dart';
import 'package:lean/views/widget-of-the-week/indexed_stack.dart';
import 'package:lean/views/widget-of-the-week/interactive_viewer.dart';
import 'package:lean/views/widget-of-the-week/layout_builder.dart';
import 'package:lean/views/widget-of-the-week/limited_box.dart';
import 'package:lean/views/widget-of-the-week/list_tile.dart';
import 'package:lean/views/widget-of-the-week/list_view.dart';
import 'package:lean/views/widget-of-the-week/list_wheel_scroll_view.dart';
import 'package:lean/views/widget-of-the-week/media_query.dart';
import 'package:lean/views/widget-of-the-week/mouse_region.dart';
import 'package:lean/views/widget-of-the-week/notification_listener.dart';
import 'package:lean/views/widget-of-the-week/opacity.dart';
import 'package:lean/views/widget-of-the-week/package__animated_text_kit.dart';
import 'package:lean/views/widget-of-the-week/package__animations.dart';
import 'package:lean/views/widget-of-the-week/package__async.dart';
import 'package:lean/views/widget-of-the-week/package__connectivity.dart';
import 'package:lean/views/widget-of-the-week/package__device_info.dart';
import 'package:lean/views/widget-of-the-week/package__flutter_slidable.dart';
import 'package:lean/views/widget-of-the-week/package__location.dart';
import 'package:lean/views/widget-of-the-week/package__sensors_plus.dart';
import 'package:lean/views/widget-of-the-week/package__sliver_app_bar.dart';
import 'package:lean/views/widget-of-the-week/package__sqflite.dart';
import 'package:lean/views/widget-of-the-week/package__url_launcher.dart';
import 'package:lean/views/widget-of-the-week/padding.dart';
import 'package:lean/views/widget-of-the-week/page_view.dart';
import 'package:lean/views/widget-of-the-week/physical_model.dart';
import 'package:lean/views/widget-of-the-week/placeholder.dart';
import 'package:lean/views/widget-of-the-week/positioned.dart';
import 'package:lean/views/widget-of-the-week/reorderable_list_view.dart';
import 'package:lean/views/widget-of-the-week/rich_text.dart';
import 'package:lean/views/widget-of-the-week/rotated_box.dart';
import 'package:lean/views/widget-of-the-week/safearea.dart';
import 'package:lean/views/widget-of-the-week/scrollbar.dart';
import 'package:lean/views/widget-of-the-week/selectable_text.dart';
import 'package:lean/views/widget-of-the-week/semantics.dart';
import 'package:lean/views/widget-of-the-week/shader_mask.dart';
import 'package:lean/views/widget-of-the-week/sized_box.dart';
import 'package:lean/views/widget-of-the-week/slider__range_slider__cupertino_slider.dart';
import 'package:lean/views/widget-of-the-week/sliver_app_bar.dart';
import 'package:lean/views/widget-of-the-week/sliver_list__sliver_grid.dart';
import 'package:lean/views/widget-of-the-week/snack_bar.dart';
import 'package:lean/views/widget-of-the-week/spacer.dart';
import 'package:lean/views/widget-of-the-week/aspect_ratio.dart';
import 'package:lean/views/widget-of-the-week/stack.dart';
import 'package:lean/views/widget-of-the-week/stream_builder.dart';
import 'package:lean/views/widget-of-the-week/switch_list_tile.dart';
import 'package:lean/views/widget-of-the-week/table.dart';
import 'package:lean/views/widget-of-the-week/toggle_buttons.dart';
import 'package:lean/views/widget-of-the-week/tooltip.dart';
import 'package:lean/views/widget-of-the-week/transform.dart';
import 'package:lean/views/widget-of-the-week/tween_animation_builder.dart';
import 'package:lean/views/widget-of-the-week/valueListenable_builder.dart';
import 'package:lean/views/widget-of-the-week/wrap.dart';
import 'package:lean/views/widget-of-the-week/builder.dart';

class WidgetListRow {
  String widgetName; // ??????Widget?????????
  String path; // widget?????????????????????????????????
  bool isDisplay; // ??????????????????
  WidgetBuilder widgetBuilder; // routes????????????
  int number; // Widget of the week ????????????????????????
  String displayName; // ???????????????????????????????????????

  WidgetListRow({
    Widget widget,
    this.number,
    this.isDisplay: true,
  }) {
    this.widgetName = widget.toString().replaceFirst('Widget', '');
    this.widgetBuilder = (BuildContext context) => widget;
    this.path = "/${this.widgetName}";
    this.displayName = "#${this.number} ${this.widgetName}";
  }
}

class WidgetList {
  List<WidgetListRow> _widgetList;
  // widget of the week ???widget??????????????????????????????Widget???
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
    WidgetListView(),
    WidgetListTile(),
    WidgetContainer(),
    WidgetSelectableText(),
    WidgetDataTable(),
    WidgetSlider_RangeSlider_CupertinoSlider(),
    WidgetAlertDialog(),
    WidgetAnimatedCrossFade(),
    WidgetDraggableScrollableSheet(),
    WidgetColorFiltered(),
    WidgetToggleButtons(),
    WidgetCupertinoActionSheet(),
    WidgetTweenAnimationBuilder(),
    WidgetImage(),
    WidgetDefaultTabController_TabBar(),
    WidgetDrawer(),
    WidgetSnackBar(),
    WidgetListWheelScrollView(),
    WidgetShaderMask(),
    WidgetNotificationListener(),
    WidgetBuilderSample(),
    WidgetClipPath(),
    WidgetCircularProgressIndicator_LinearProgressIndicator(),
    WidgetDivider(),
    WidgetIgnorePointer(),
    WidgetCupertinoActivityIndicator(),
    WidgetClipOval(),
    WidgetAnimatedWidget(),
    WidgetPadding(),
    WidgetCheckboxListTile(),
    WidgetAboutDialog(),
    WidgetPackage__async(),
    WidgetPackage__url_launcher(),
    WidgetPackage__sqflite(),
    WidgetPackage__SliverAppBar(),
    WidgetInteractiveViewer(),
    WidgetGridView(),
    WidgetSwitchListTile(),
    WidgetPackage__location(),
    WidgetPackage__Device_info(),
    WidgetImageFiltered(),
    WidgetPhysicalModel(),
    WidgetPackage__Animations(),
    WidgetPackage__flutter_slidable(),
    WidgetRotatedBox(),
    WidgetExpansionPanel(),
    WidgetScrollbar(),
    WidgetPackage__connectivity(),
    WidgetFlutterLogo(),
    WidgetPackage__animated_text_kit(),
    WidgetMouseRegion(),
    WidgetPackage__sensors_plus(),
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

  /// ??????????????????????????????MAP?????????
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
