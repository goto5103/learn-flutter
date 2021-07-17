
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lean/redux/reducer/app_reducer.dart';
import 'package:lean/redux/state/app_state.dart';
import 'package:redux/redux.dart';

import 'views/root.dart';
import 'views/safearea.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final store = Store<AppState>(appReducer, initialState: AppState());
  @override
  Widget build(BuildContext context) {
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
          routes: <String, WidgetBuilder>{
            "/":(BuildContext context) => Root(),
            "/SafeArea":(BuildContext context) => WidgetSafeArea(),
          },
        ));
  }
}
