// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'var.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlockyVar {
  BlockyLiteralType get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockyVarCopyWith<BlockyVar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockyVarCopyWith<$Res> {
  factory $BlockyVarCopyWith(BlockyVar value, $Res Function(BlockyVar) then) =
      _$BlockyVarCopyWithImpl<$Res, BlockyVar>;
  @useResult
  $Res call({BlockyLiteralType type, dynamic value});
}

/// @nodoc
class _$BlockyVarCopyWithImpl<$Res, $Val extends BlockyVar>
    implements $BlockyVarCopyWith<$Res> {
  _$BlockyVarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlockyLiteralType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockyVarImplCopyWith<$Res>
    implements $BlockyVarCopyWith<$Res> {
  factory _$$BlockyVarImplCopyWith(
          _$BlockyVarImpl value, $Res Function(_$BlockyVarImpl) then) =
      __$$BlockyVarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlockyLiteralType type, dynamic value});
}

/// @nodoc
class __$$BlockyVarImplCopyWithImpl<$Res>
    extends _$BlockyVarCopyWithImpl<$Res, _$BlockyVarImpl>
    implements _$$BlockyVarImplCopyWith<$Res> {
  __$$BlockyVarImplCopyWithImpl(
      _$BlockyVarImpl _value, $Res Function(_$BlockyVarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_$BlockyVarImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlockyLiteralType,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BlockyVarImpl with DiagnosticableTreeMixin implements _BlockyVar {
  const _$BlockyVarImpl({required this.type, required this.value});

  @override
  final BlockyLiteralType type;
  @override
  final dynamic value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockyVar(type: $type, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockyVar'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockyVarImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockyVarImplCopyWith<_$BlockyVarImpl> get copyWith =>
      __$$BlockyVarImplCopyWithImpl<_$BlockyVarImpl>(this, _$identity);
}

abstract class _BlockyVar implements BlockyVar {
  const factory _BlockyVar(
      {required final BlockyLiteralType type,
      required final dynamic value}) = _$BlockyVarImpl;

  @override
  BlockyLiteralType get type;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$BlockyVarImplCopyWith<_$BlockyVarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
