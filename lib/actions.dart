import 'package:async_redux/async_redux.dart';

import 'store.dart';

class AddActivityAction extends ReduxAction<AppState> {
  final Activity activity;

  AddActivityAction({required this.activity});

  @override
  AppState reduce() => state.rebuild((b) => b..activities.add(activity));
}
