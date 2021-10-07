import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:async_redux/async_redux.dart';

import 'store.dart';
import 'connectors.dart';

class ActivityListViewModel extends Vm {
  final BuiltList<Activity> activities;
  final VoidCallback onAddActivity;

  ActivityListViewModel({
    required this.activities,
    required this.onAddActivity,
  }) : super(equals: [activities]);
}

class ActivityListViewFactory
    extends VmFactory<AppState, ActivityListViewConnector> {
  ActivityListViewFactory(widget) : super(widget);

  @override
  ActivityListViewModel fromStore() => ActivityListViewModel(
        activities: state.activities,
        onAddActivity: () => dispatch(NavigateAction.pushNamed("/addActivity")),
      );
}
