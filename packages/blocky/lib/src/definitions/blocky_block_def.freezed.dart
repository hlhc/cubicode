// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocky_block_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlockyBlockDef {
  BlockyBlockAction get action => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  BlockyLiteralType get output => throw _privateConstructorUsedError;
  BlockyStyle get style => throw _privateConstructorUsedError;
  List<BlockyArgsDef> get args => throw _privateConstructorUsedError;
  List<BlockyPermission> get permissions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockyBlockDefCopyWith<BlockyBlockDef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockyBlockDefCopyWith<$Res> {
  factory $BlockyBlockDefCopyWith(
          BlockyBlockDef value, $Res Function(BlockyBlockDef) then) =
      _$BlockyBlockDefCopyWithImpl<$Res, BlockyBlockDef>;
  @useResult
  $Res call(
      {BlockyBlockAction action,
      String message,
      BlockyLiteralType output,
      BlockyStyle style,
      List<BlockyArgsDef> args,
      List<BlockyPermission> permissions});
}

/// @nodoc
class _$BlockyBlockDefCopyWithImpl<$Res, $Val extends BlockyBlockDef>
    implements $BlockyBlockDefCopyWith<$Res> {
  _$BlockyBlockDefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? message = null,
    Object? output = null,
    Object? style = null,
    Object? args = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlockyBlockAction,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as BlockyLiteralType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BlockyStyle,
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<BlockyArgsDef>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<BlockyPermission>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockyBlockDefImplCopyWith<$Res>
    implements $BlockyBlockDefCopyWith<$Res> {
  factory _$$BlockyBlockDefImplCopyWith(_$BlockyBlockDefImpl value,
          $Res Function(_$BlockyBlockDefImpl) then) =
      __$$BlockyBlockDefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlockyBlockAction action,
      String message,
      BlockyLiteralType output,
      BlockyStyle style,
      List<BlockyArgsDef> args,
      List<BlockyPermission> permissions});
}

/// @nodoc
class __$$BlockyBlockDefImplCopyWithImpl<$Res>
    extends _$BlockyBlockDefCopyWithImpl<$Res, _$BlockyBlockDefImpl>
    implements _$$BlockyBlockDefImplCopyWith<$Res> {
  __$$BlockyBlockDefImplCopyWithImpl(
      _$BlockyBlockDefImpl _value, $Res Function(_$BlockyBlockDefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? message = null,
    Object? output = null,
    Object? style = null,
    Object? args = null,
    Object? permissions = null,
  }) {
    return _then(_$BlockyBlockDefImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlockyBlockAction,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as BlockyLiteralType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as BlockyStyle,
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<BlockyArgsDef>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<BlockyPermission>,
    ));
  }
}

/// @nodoc

class _$BlockyBlockDefImpl
    with DiagnosticableTreeMixin
    implements _BlockyBlockDef {
  const _$BlockyBlockDefImpl(
      {required this.action,
      required this.message,
      required this.output,
      required this.style,
      final List<BlockyArgsDef> args = const [],
      final List<BlockyPermission> permissions = const []})
      : _args = args,
        _permissions = permissions;

  @override
  final BlockyBlockAction action;
  @override
  final String message;
  @override
  final BlockyLiteralType output;
  @override
  final BlockyStyle style;
  final List<BlockyArgsDef> _args;
  @override
  @JsonKey()
  List<BlockyArgsDef> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  final List<BlockyPermission> _permissions;
  @override
  @JsonKey()
  List<BlockyPermission> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockyBlockDef(action: $action, message: $message, output: $output, style: $style, args: $args, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockyBlockDef'))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('output', output))
      ..add(DiagnosticsProperty('style', style))
      ..add(DiagnosticsProperty('args', args))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockyBlockDefImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      message,
      output,
      style,
      const DeepCollectionEquality().hash(_args),
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockyBlockDefImplCopyWith<_$BlockyBlockDefImpl> get copyWith =>
      __$$BlockyBlockDefImplCopyWithImpl<_$BlockyBlockDefImpl>(
          this, _$identity);
}

abstract class _BlockyBlockDef implements BlockyBlockDef {
  const factory _BlockyBlockDef(
      {required final BlockyBlockAction action,
      required final String message,
      required final BlockyLiteralType output,
      required final BlockyStyle style,
      final List<BlockyArgsDef> args,
      final List<BlockyPermission> permissions}) = _$BlockyBlockDefImpl;

  @override
  BlockyBlockAction get action;
  @override
  String get message;
  @override
  BlockyLiteralType get output;
  @override
  BlockyStyle get style;
  @override
  List<BlockyArgsDef> get args;
  @override
  List<BlockyPermission> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$BlockyBlockDefImplCopyWith<_$BlockyBlockDefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
