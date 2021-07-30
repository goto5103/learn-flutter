import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lean/redux/reducer/app_reducer.dart';
import 'package:lean/redux/state/app_state.dart';
import 'package:redux/redux.dart';
import 'models/widget_list.dart';
import 'views/root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = Store<AppState>(appReducer, initialState: AppState());
  final widgetsRoutes = WidgetList().getRoutes();
  final route = <String, WidgetBuilder>{"/": (BuildContext context) => Root()};

  @override
  Widget build(BuildContext context) {
    route.addAll(widgetsRoutes);
    // StoreProviderでMaterialAppをラップして、アプリのどこからでもStoreにアクセスできるようにする
    return StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Learning',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: "/",
            routes: route));
  }
}
