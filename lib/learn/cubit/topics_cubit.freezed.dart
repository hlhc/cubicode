// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopicsState implements DiagnosticableTreeMixin {
  User get user;
  TopicsStatus get status;
  List<Topic> get topics;
  TopicsFailure get failure;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopicsStateCopyWith<TopicsState> get copyWith =>
      _$TopicsStateCopyWithImpl<TopicsState>(this as TopicsState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopicsState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('topics', topics))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopicsState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.topics, topics) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status,
      const DeepCollectionEquality().hash(topics), failure);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopicsState(user: $user, status: $status, topics: $topics, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
          TopicsState value, $Res Function(TopicsState) _then) =
      _$TopicsStateCopyWithImpl;
  @useResult
  $Res call(
      {User user,
      TopicsStatus status,
      List<Topic> topics,
      TopicsFailure failure});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res> implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._self, this._then);

  final TopicsState _self;
  final $Res Function(TopicsState) _then;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? topics = null,
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
              as TopicsStatus,
      topics: null == topics
          ? _self.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TopicsFailure,
    ));
  }

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TopicsState].
extension TopicsStatePatterns on TopicsState {
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
    TResult Function(_TopicsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TopicsState() when $default != null:
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
    TResult Function(_TopicsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TopicsState():
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
    TResult? Function(_TopicsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TopicsState() when $default != null:
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
    TResult Function(User user, TopicsStatus status, List<Topic> topics,
            TopicsFailure failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TopicsState() when $default != null:
        return $default(_that.user, _that.status, _that.topics, _that.failure);
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
    TResult Function(User user, TopicsStatus status, List<Topic> topics,
            TopicsFailure failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TopicsState():
        return $default(_that.user, _that.status, _that.topics, _that.failure);
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
    TResult? Function(User user, TopicsStatus status, List<Topic> topics,
            TopicsFailure failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TopicsState() when $default != null:
        return $default(_that.user, _that.status, _that.topics, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TopicsState extends TopicsState with DiagnosticableTreeMixin {
  const _TopicsState(
      {required this.user,
      required this.status,
      required final List<Topic> topics,
      required this.failure})
      : _topics = topics,
        super._();

  @override
  final User user;
  @override
  final TopicsStatus status;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final TopicsFailure failure;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TopicsStateCopyWith<_TopicsState> get copyWith =>
      __$TopicsStateCopyWithImpl<_TopicsState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopicsState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('topics', topics))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopicsState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status,
      const DeepCollectionEquality().hash(_topics), failure);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopicsState(user: $user, status: $status, topics: $topics, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$TopicsStateCopyWith<$Res>
    implements $TopicsStateCopyWith<$Res> {
  factory _$TopicsStateCopyWith(
          _TopicsState value, $Res Function(_TopicsState) _then) =
      __$TopicsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User user,
      TopicsStatus status,
      List<Topic> topics,
      TopicsFailure failure});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$TopicsStateCopyWithImpl<$Res> implements _$TopicsStateCopyWith<$Res> {
  __$TopicsStateCopyWithImpl(this._self, this._then);

  final _TopicsState _self;
  final $Res Function(_TopicsState) _then;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? topics = null,
    Object? failure = null,
  }) {
    return _then(_TopicsState(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as TopicsStatus,
      topics: null == topics
          ? _self._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TopicsFailure,
    ));
  }

  /// Create a copy of TopicsState
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
