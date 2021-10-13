import 'package:flutter/material.dart' hide Builder;

import 'package:async_redux/async_redux.dart';

import 'store.dart';
import 'connectors.dart';
import 'widgets.dart';

late Store<AppState> store;

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  NavigateAction.setNavigatorKey(navigatorKey);
  store = Store<AppState>(
      initialState: AppState((b) => b
        ..activities.add(Activity((b) => b
          ..name = "hello"
          ..description = "world"))));
  runApp(MyApp());
}

final routes = {
  '/': (BuildContext context) => ActivityListViewConnector(),
  "/addActivity": (BuildContext context) => AddActivtyDialog(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        routes: routes,
        navigatorKey: navigatorKey,
      ));
}
