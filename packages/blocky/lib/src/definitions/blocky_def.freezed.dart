// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocky_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlockyDef {
  BlockyType get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<BlockyBlockDef> get blocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockyDefCopyWith<BlockyDef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockyDefCopyWith<$Res> {
  factory $BlockyDefCopyWith(BlockyDef value, $Res Function(BlockyDef) then) =
      _$BlockyDefCopyWithImpl<$Res, BlockyDef>;
  @useResult
  $Res call(
      {BlockyType type,
      String title,
      String message,
      List<BlockyBlockDef> blocks});
}

/// @nodoc
class _$BlockyDefCopyWithImpl<$Res, $Val extends BlockyDef>
    implements $BlockyDefCopyWith<$Res> {
  _$BlockyDefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? blocks = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlockyType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockyBlockDef>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockyDefImplCopyWith<$Res>
    implements $BlockyDefCopyWith<$Res> {
  factory _$$BlockyDefImplCopyWith(
          _$BlockyDefImpl value, $Res Function(_$BlockyDefImpl) then) =
      __$$BlockyDefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlockyType type,
      String title,
      String message,
      List<BlockyBlockDef> blocks});
}

/// @nodoc
class __$$BlockyDefImplCopyWithImpl<$Res>
    extends _$BlockyDefCopyWithImpl<$Res, _$BlockyDefImpl>
    implements _$$BlockyDefImplCopyWith<$Res> {
  __$$BlockyDefImplCopyWithImpl(
      _$BlockyDefImpl _value, $Res Function(_$BlockyDefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? blocks = null,
  }) {
    return _then(_$BlockyDefImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BlockyType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockyBlockDef>,
    ));
  }
}

/// @nodoc

class _$BlockyDefImpl with DiagnosticableTreeMixin implements _BlockyDef {
  const _$BlockyDefImpl(
      {required this.type,
      required this.title,
      required this.message,
      required final List<BlockyBlockDef> blocks})
      : _blocks = blocks;

  @override
  final BlockyType type;
  @override
  final String title;
  @override
  final String message;
  final List<BlockyBlockDef> _blocks;
  @override
  List<BlockyBlockDef> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockyDef(type: $type, title: $title, message: $message, blocks: $blocks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockyDef'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('blocks', blocks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockyDefImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, title, message,
      const DeepCollectionEquality().hash(_blocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockyDefImplCopyWith<_$BlockyDefImpl> get copyWith =>
      __$$BlockyDefImplCopyWithImpl<_$BlockyDefImpl>(this, _$identity);
}

abstract class _BlockyDef implements BlockyDef {
  const factory _BlockyDef(
      {required final BlockyType type,
      required final String title,
      required final String message,
      required final List<BlockyBlockDef> blocks}) = _$BlockyDefImpl;

  @override
  BlockyType get type;
  @override
  String get title;
  @override
  String get message;
  @override
  List<BlockyBlockDef> get blocks;
  @override
  @JsonKey(ignore: true)
  _$$BlockyDefImplCopyWith<_$BlockyDefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
