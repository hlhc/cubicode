// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectState implements DiagnosticableTreeMixin {
  User get user;
  ProjectsStatus get status;
  List<Project> get projects;
  ProjectsFailure get failure;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      _$ProjectStateCopyWithImpl<ProjectState>(
          this as ProjectState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProjectState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('projects', projects))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.projects, projects) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status,
      const DeepCollectionEquality().hash(projects), failure);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState(user: $user, status: $status, projects: $projects, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) _then) =
      _$ProjectStateCopyWithImpl;
  @useResult
  $Res call(
      {User user,
      ProjectsStatus status,
      List<Project> projects,
      ProjectsFailure failure});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._self, this._then);

  final ProjectState _self;
  final $Res Function(ProjectState) _then;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? projects = null,
    Object? failure = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectsStatus,
      projects: null == projects
          ? _self.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProjectsFailure,
    ));
  }

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProjectState].
extension ProjectStatePatterns on ProjectState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProjectState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProjectState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProjectState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProjectState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user, ProjectsStatus status, List<Project> projects,
            ProjectsFailure failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProjectState() when $default != null:
        return $default(
            _that.user, _that.status, _that.projects, _that.failure);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user, ProjectsStatus status, List<Project> projects,
            ProjectsFailure failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProjectState():
        return $default(
            _that.user, _that.status, _that.projects, _that.failure);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(User user, ProjectsStatus status, List<Project> projects,
            ProjectsFailure failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProjectState() when $default != null:
        return $default(
            _that.user, _that.status, _that.projects, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProjectState extends ProjectState with DiagnosticableTreeMixin {
  const _ProjectState(
      {required this.user,
      required this.status,
      required final List<Project> projects,
      required this.failure})
      : _projects = projects,
        super._();

  @override
  final User user;
  @override
  final ProjectsStatus status;
  final List<Project> _projects;
  @override
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final ProjectsFailure failure;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectStateCopyWith<_ProjectState> get copyWith =>
      __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ProjectState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('projects', projects))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status,
      const DeepCollectionEquality().hash(_projects), failure);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState(user: $user, status: $status, projects: $projects, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ProjectStateCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$ProjectStateCopyWith(
          _ProjectState value, $Res Function(_ProjectState) _then) =
      __$ProjectStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User user,
      ProjectsStatus status,
      List<Project> projects,
      ProjectsFailure failure});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ProjectStateCopyWithImpl<$Res>
    implements _$ProjectStateCopyWith<$Res> {
  __$ProjectStateCopyWithImpl(this._self, this._then);

  final _ProjectState _self;
  final $Res Function(_ProjectState) _then;

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? projects = null,
    Object? failure = null,
  }) {
    return _then(_ProjectState(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectsStatus,
      projects: null == projects
          ? _self._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProjectsFailure,
    ));
  }

  /// Create a copy of ProjectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
