// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  Map<String, List<String>>? get completedQuizzes =>
      throw _privateConstructorUsedError;
  Map<String, List<String>>? get completedContent =>
      throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool? get badge => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      Map<String, List<String>>? completedQuizzes,
      Map<String, List<String>>? completedContent,
      String? email,
      bool? badge,
      String? name,
      String? photo});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completedQuizzes = freezed,
    Object? completedContent = freezed,
    Object? email = freezed,
    Object? badge = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      completedQuizzes: freezed == completedQuizzes
          ? _value.completedQuizzes
          : completedQuizzes // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      completedContent: freezed == completedContent
          ? _value.completedContent
          : completedContent // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Map<String, List<String>>? completedQuizzes,
      Map<String, List<String>>? completedContent,
      String? email,
      bool? badge,
      String? name,
      String? photo});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completedQuizzes = freezed,
    Object? completedContent = freezed,
    Object? email = freezed,
    Object? badge = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      completedQuizzes: freezed == completedQuizzes
          ? _value._completedQuizzes
          : completedQuizzes // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      completedContent: freezed == completedContent
          ? _value._completedContent
          : completedContent // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {required this.id,
      final Map<String, List<String>>? completedQuizzes,
      final Map<String, List<String>>? completedContent,
      this.email,
      this.badge,
      this.name,
      this.photo})
      : _completedQuizzes = completedQuizzes,
        _completedContent = completedContent,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  final Map<String, List<String>>? _completedQuizzes;
  @override
  Map<String, List<String>>? get completedQuizzes {
    final value = _completedQuizzes;
    if (value == null) return null;
    if (_completedQuizzes is EqualUnmodifiableMapView) return _completedQuizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, List<String>>? _completedContent;
  @override
  Map<String, List<String>>? get completedContent {
    final value = _completedContent;
    if (value == null) return null;
    if (_completedContent is EqualUnmodifiableMapView) return _completedContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? email;
  @override
  final bool? badge;
  @override
  final String? name;
  @override
  final String? photo;

  @override
  String toString() {
    return 'User(id: $id, completedQuizzes: $completedQuizzes, completedContent: $completedContent, email: $email, badge: $badge, name: $name, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._completedQuizzes, _completedQuizzes) &&
            const DeepCollectionEquality()
                .equals(other._completedContent, _completedContent) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_completedQuizzes),
      const DeepCollectionEquality().hash(_completedContent),
      email,
      badge,
      name,
      photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      final Map<String, List<String>>? completedQuizzes,
      final Map<String, List<String>>? completedContent,
      final String? email,
      final bool? badge,
      final String? name,
      final String? photo}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  Map<String, List<String>>? get completedQuizzes;
  @override
  Map<String, List<String>>? get completedContent;
  @override
  String? get email;
  @override
  bool? get badge;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
