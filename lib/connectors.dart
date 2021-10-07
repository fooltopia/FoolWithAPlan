import 'package:flutter/material.dart' hide Builder;

import 'package:async_redux/async_redux.dart';

import 'store.dart';
import 'models.dart';
import 'widgets.dart';

class ActivityListViewConnector extends StatelessWidget {
  ActivityListViewConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ActivityListViewModel>(
      vm: () => ActivityListViewFactory(this),
      builder: (BuildContext context, ActivityListViewModel vm) =>
          ActivityListView(
        activities: vm.activities,
        onAddActivity: vm.onAddActivity,
      ),
    );
  }
}
