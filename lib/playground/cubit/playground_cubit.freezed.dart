// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playground_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaygroundState {
  String get title;
  bool get shared;
  BlockyProgram get program;
  bool get readonly;
  Quiz? get quiz;
  String? get id;
  String? get checksum;

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaygroundStateCopyWith<PlaygroundState> get copyWith =>
      _$PlaygroundStateCopyWithImpl<PlaygroundState>(
          this as PlaygroundState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaygroundState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shared, shared) || other.shared == shared) &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.readonly, readonly) ||
                other.readonly == readonly) &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, shared, program, readonly, quiz, id, checksum);

  @override
  String toString() {
    return 'PlaygroundState(title: $title, shared: $shared, program: $program, readonly: $readonly, quiz: $quiz, id: $id, checksum: $checksum)';
  }
}

/// @nodoc
abstract mixin class $PlaygroundStateCopyWith<$Res> {
  factory $PlaygroundStateCopyWith(
          PlaygroundState value, $Res Function(PlaygroundState) _then) =
      _$PlaygroundStateCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      bool shared,
      BlockyProgram program,
      bool readonly,
      Quiz? quiz,
      String? id,
      String? checksum});

  $BlockyProgramCopyWith<$Res> get program;
  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class _$PlaygroundStateCopyWithImpl<$Res>
    implements $PlaygroundStateCopyWith<$Res> {
  _$PlaygroundStateCopyWithImpl(this._self, this._then);

  final PlaygroundState _self;
  final $Res Function(PlaygroundState) _then;

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? shared = null,
    Object? program = null,
    Object? readonly = null,
    Object? quiz = freezed,
    Object? id = freezed,
    Object? checksum = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shared: null == shared
          ? _self.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
      program: null == program
          ? _self.program
          : program // ignore: cast_nullable_to_non_nullable
              as BlockyProgram,
      readonly: null == readonly
          ? _self.readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as bool,
      quiz: freezed == quiz
          ? _self.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      checksum: freezed == checksum
          ? _self.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockyProgramCopyWith<$Res> get program {
    return $BlockyProgramCopyWith<$Res>(_self.program, (value) {
      return _then(_self.copyWith(program: value));
    });
  }

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res>? get quiz {
    if (_self.quiz == null) {
      return null;
    }

    return $QuizCopyWith<$Res>(_self.quiz!, (value) {
      return _then(_self.copyWith(quiz: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PlaygroundState].
extension PlaygroundStatePatterns on PlaygroundState {
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
    TResult Function(_PlaygroundState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState() when $default != null:
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
    TResult Function(_PlaygroundState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState():
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
    TResult? Function(_PlaygroundState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState() when $default != null:
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
    TResult Function(String title, bool shared, BlockyProgram program,
            bool readonly, Quiz? quiz, String? id, String? checksum)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState() when $default != null:
        return $default(_that.title, _that.shared, _that.program,
            _that.readonly, _that.quiz, _that.id, _that.checksum);
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
    TResult Function(String title, bool shared, BlockyProgram program,
            bool readonly, Quiz? quiz, String? id, String? checksum)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState():
        return $default(_that.title, _that.shared, _that.program,
            _that.readonly, _that.quiz, _that.id, _that.checksum);
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
    TResult? Function(String title, bool shared, BlockyProgram program,
            bool readonly, Quiz? quiz, String? id, String? checksum)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaygroundState() when $default != null:
        return $default(_that.title, _that.shared, _that.program,
            _that.readonly, _that.quiz, _that.id, _that.checksum);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PlaygroundState extends PlaygroundState {
  const _PlaygroundState(
      {required this.title,
      required this.shared,
      required this.program,
      required this.readonly,
      this.quiz,
      this.id,
      this.checksum})
      : super._();

  @override
  final String title;
  @override
  final bool shared;
  @override
  final BlockyProgram program;
  @override
  final bool readonly;
  @override
  final Quiz? quiz;
  @override
  final String? id;
  @override
  final String? checksum;

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaygroundStateCopyWith<_PlaygroundState> get copyWith =>
      __$PlaygroundStateCopyWithImpl<_PlaygroundState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaygroundState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shared, shared) || other.shared == shared) &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.readonly, readonly) ||
                other.readonly == readonly) &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, shared, program, readonly, quiz, id, checksum);

  @override
  String toString() {
    return 'PlaygroundState(title: $title, shared: $shared, program: $program, readonly: $readonly, quiz: $quiz, id: $id, checksum: $checksum)';
  }
}

/// @nodoc
abstract mixin class _$PlaygroundStateCopyWith<$Res>
    implements $PlaygroundStateCopyWith<$Res> {
  factory _$PlaygroundStateCopyWith(
          _PlaygroundState value, $Res Function(_PlaygroundState) _then) =
      __$PlaygroundStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      bool shared,
      BlockyProgram program,
      bool readonly,
      Quiz? quiz,
      String? id,
      String? checksum});

  @override
  $BlockyProgramCopyWith<$Res> get program;
  @override
  $QuizCopyWith<$Res>? get quiz;
}

/// @nodoc
class __$PlaygroundStateCopyWithImpl<$Res>
    implements _$PlaygroundStateCopyWith<$Res> {
  __$PlaygroundStateCopyWithImpl(this._self, this._then);

  final _PlaygroundState _self;
  final $Res Function(_PlaygroundState) _then;

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? shared = null,
    Object? program = null,
    Object? readonly = null,
    Object? quiz = freezed,
    Object? id = freezed,
    Object? checksum = freezed,
  }) {
    return _then(_PlaygroundState(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shared: null == shared
          ? _self.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
      program: null == program
          ? _self.program
          : program // ignore: cast_nullable_to_non_nullable
              as BlockyProgram,
      readonly: null == readonly
          ? _self.readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as bool,
      quiz: freezed == quiz
          ? _self.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as Quiz?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      checksum: freezed == checksum
          ? _self.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockyProgramCopyWith<$Res> get program {
    return $BlockyProgramCopyWith<$Res>(_self.program, (value) {
      return _then(_self.copyWith(program: value));
    });
  }

  /// Create a copy of PlaygroundState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizCopyWith<$Res>? get quiz {
    if (_self.quiz == null) {
      return null;
    }

    return $QuizCopyWith<$Res>(_self.quiz!, (value) {
      return _then(_self.copyWith(quiz: value));
    });
  }
}

// dart format on
