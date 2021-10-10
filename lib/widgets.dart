import 'package:flutter/material.dart' hide Builder;

import 'package:built_collection/built_collection.dart';
import 'package:async_redux/async_redux.dart';

import 'store.dart';
import 'actions.dart';

class MainTemplate extends StatelessWidget {
  final Widget title;
  Widget? body;
  MainTemplate({Key? key, required this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  this.title),
      body: this.body,
    );
  }
}

class ActivityListView extends StatelessWidget {
  final BuiltList<Activity> activities;
  final VoidCallback? onAddActivity;
  final Activity activity;
  final int numActivities;

  ActivityListView({
    Key? key,
    required this.activities,
    this.onAddActivity,
  })  : activity = activities.first,
        numActivities = activities.length,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainTemplate(
      title: const Text('Activity Overview'),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Expanded(child: ActivityList(activities: activities)),
        Center(
          child: TextButton(
            onPressed: onAddActivity,
            child: const Text("Add Activity"),
          ),
        )
      ]),
    );
  }
}

class ActivityList extends StatelessWidget {
  final BuiltList<Activity> activities;
  ActivityList({Key? key, required this.activities});

  Widget build(BuildContext context) {
    return ListView(
        children: activities.map((Activity activity) {
      return ActivityOverview(activity: activity);
    }).toList());
  }
}

class ActivityOverview extends StatelessWidget {
  final Activity activity;

  ActivityOverview({Key? key, required this.activity}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Text('Activity: ${activity.name}'),
      Text('Description: ${activity.description}')
    ]));
  }
}

class AddActivtyDialog extends StatefulWidget {
  const AddActivtyDialog({Key? key}) : super(key: key);

  @override
  State<AddActivtyDialog> createState() => _AddActivtyDialogState();
}

class _AddActivtyDialogState extends State<AddActivtyDialog> {
  late TextEditingController _nameController;
  late TextEditingController _descController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fool With a Plan')),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Name:",
              ),
              Expanded(
                  child: TextField(
                controller: _nameController,
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Description:",
              ),
              Expanded(
                  child: TextField(
                controller: _descController,
              )),
            ],
          ),
          TextButton(
            child: Text("Add"),
            onPressed: () {
              StoreProvider.dispatch<AppState>(
                  context,
                  AddActivityAction(
                      activity: Activity((b) => b
                        ..name = _nameController.text
                        ..description = _descController.text)));
              StoreProvider.dispatch<AppState>(context, NavigateAction.pop());
            },
          )
        ])));
  }
}
