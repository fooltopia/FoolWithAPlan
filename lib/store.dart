import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'store.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  static Serializer<AppState> get serializer => _$appStateSerializer;

  BuiltList<Activity> get activities;

  AppState._();
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}

abstract class Activity implements Built<Activity, ActivityBuilder> {
  static Serializer<Activity> get serializer => _$activitySerializer;

  // Can never be null.
  String get name;

  String get description;

  BuiltList<String>? get todos;

  Activity._();
  factory Activity([void Function(ActivityBuilder) updates]) = _$Activity;
}
