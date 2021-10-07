// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Activity> _$activitySerializer = new _$ActivitySerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'activities',
      serializers.serialize(object.activities,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Activity)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'activities':
          result.activities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Activity)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ActivitySerializer implements StructuredSerializer<Activity> {
  @override
  final Iterable<Type> types = const [Activity, _$Activity];
  @override
  final String wireName = 'Activity';

  @override
  Iterable<Object?> serialize(Serializers serializers, Activity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.todos;
    if (value != null) {
      result
        ..add('todos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Activity deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'todos':
          result.todos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Activity> activities;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.activities}) : super._() {
    BuiltValueNullFieldError.checkNotNull(activities, 'AppState', 'activities');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && activities == other.activities;
  }

  @override
  int get hashCode {
    return $jf($jc(0, activities.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('activities', activities))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Activity>? _activities;
  ListBuilder<Activity> get activities =>
      _$this._activities ??= new ListBuilder<Activity>();
  set activities(ListBuilder<Activity>? activities) =>
      _$this._activities = activities;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activities = $v.activities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(activities: activities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activities';
        activities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Activity extends Activity {
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltList<String>? todos;

  factory _$Activity([void Function(ActivityBuilder)? updates]) =>
      (new ActivityBuilder()..update(updates)).build();

  _$Activity._({required this.name, required this.description, this.todos})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Activity', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Activity', 'description');
  }

  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => new ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
        name == other.name &&
        description == other.description &&
        todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), description.hashCode), todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Activity')
          ..add('name', name)
          ..add('description', description)
          ..add('todos', todos))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _todos;
  ListBuilder<String> get todos => _$this._todos ??= new ListBuilder<String>();
  set todos(ListBuilder<String>? todos) => _$this._todos = todos;

  ActivityBuilder();

  ActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _todos = $v.todos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Activity build() {
    _$Activity _$result;
    try {
      _$result = _$v ??
          new _$Activity._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Activity', 'name'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'Activity', 'description'),
              todos: _todos?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        _todos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Activity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
