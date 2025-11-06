// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocky_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockyBlock _$BlockyBlockFromJson(Map<String, dynamic> json) {
  return _BlockyBlock.fromJson(json);
}

/// @nodoc
mixin _$BlockyBlock {
  @JsonKey(name: 'i')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'a')
  BlockyBlockAction get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'o')
  BlockyLiteralType get output => throw _privateConstructorUsedError;
  @JsonKey(name: 's')
  BlockyStyle get style => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  Map<String, dynamic> get args => throw _privateConstructorUsedError;
  @JsonKey(name: 'd')
  List<String> get dependent => throw _privateConstructorUsedError;
  @JsonKey(name: 'm')
  String? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockyBlockCopyWith<BlockyBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockyBlockCopyWith<$Res> {
  factory $BlockyBlockCopyWith(
          BlockyBlock value, $Res Function(BlockyBlock) then) =
      _$BlockyBlockCopyWithImpl<$Res, BlockyBlock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'i') String id,
      @JsonKey(name: 'a') BlockyBlockAction action,
      @JsonKey(name: 'o') BlockyLiteralType output,
      @JsonKey(name: 's') BlockyStyle style,
      @JsonKey(name: 'p') Map<String, dynamic> args,
      @JsonKey(name: 'd') List<String> dependent,
      @JsonKey(name: 'm') String? parent});
}

/// @nodoc
class _$BlockyBlockCopyWithImpl<$Res, $Val extends BlockyBlock>
    implements $BlockyBlockCopyWith<$Res> {
  _$BlockyBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? output = null,
    Object? style = null,
    Object? args = null,
    Object? dependent = null,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlockyBlockAction,
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
              as Map<String, dynamic>,
      dependent: null == dependent
          ? _value.dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockyBlockImplCopyWith<$Res>
    implements $BlockyBlockCopyWith<$Res> {
  factory _$$BlockyBlockImplCopyWith(
          _$BlockyBlockImpl value, $Res Function(_$BlockyBlockImpl) then) =
      __$$BlockyBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'i') String id,
      @JsonKey(name: 'a') BlockyBlockAction action,
      @JsonKey(name: 'o') BlockyLiteralType output,
      @JsonKey(name: 's') BlockyStyle style,
      @JsonKey(name: 'p') Map<String, dynamic> args,
      @JsonKey(name: 'd') List<String> dependent,
      @JsonKey(name: 'm') String? parent});
}

/// @nodoc
class __$$BlockyBlockImplCopyWithImpl<$Res>
    extends _$BlockyBlockCopyWithImpl<$Res, _$BlockyBlockImpl>
    implements _$$BlockyBlockImplCopyWith<$Res> {
  __$$BlockyBlockImplCopyWithImpl(
      _$BlockyBlockImpl _value, $Res Function(_$BlockyBlockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? output = null,
    Object? style = null,
    Object? args = null,
    Object? dependent = null,
    Object? parent = freezed,
  }) {
    return _then(_$BlockyBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlockyBlockAction,
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
              as Map<String, dynamic>,
      dependent: null == dependent
          ? _value._dependent
          : dependent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockyBlockImpl extends _BlockyBlock with DiagnosticableTreeMixin {
  const _$BlockyBlockImpl(
      {@JsonKey(name: 'i') required this.id,
      @JsonKey(name: 'a') required this.action,
      @JsonKey(name: 'o') required this.output,
      @JsonKey(name: 's') required this.style,
      @JsonKey(name: 'p') final Map<String, dynamic> args = const {},
      @JsonKey(name: 'd') final List<String> dependent = const [],
      @JsonKey(name: 'm') this.parent})
      : _args = args,
        _dependent = dependent,
        super._();

  factory _$BlockyBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockyBlockImplFromJson(json);

  @override
  @JsonKey(name: 'i')
  final String id;
  @override
  @JsonKey(name: 'a')
  final BlockyBlockAction action;
  @override
  @JsonKey(name: 'o')
  final BlockyLiteralType output;
  @override
  @JsonKey(name: 's')
  final BlockyStyle style;
  final Map<String, dynamic> _args;
  @override
  @JsonKey(name: 'p')
  Map<String, dynamic> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  final List<String> _dependent;
  @override
  @JsonKey(name: 'd')
  List<String> get dependent {
    if (_dependent is EqualUnmodifiableListView) return _dependent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependent);
  }

  @override
  @JsonKey(name: 'm')
  final String? parent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockyBlock(id: $id, action: $action, output: $output, style: $style, args: $args, dependent: $dependent, parent: $parent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockyBlock'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('output', output))
      ..add(DiagnosticsProperty('style', style))
      ..add(DiagnosticsProperty('args', args))
      ..add(DiagnosticsProperty('dependent', dependent))
      ..add(DiagnosticsProperty('parent', parent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockyBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            const DeepCollectionEquality()
                .equals(other._dependent, _dependent) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      action,
      output,
      style,
      const DeepCollectionEquality().hash(_args),
      const DeepCollectionEquality().hash(_dependent),
      parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockyBlockImplCopyWith<_$BlockyBlockImpl> get copyWith =>
      __$$BlockyBlockImplCopyWithImpl<_$BlockyBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockyBlockImplToJson(
      this,
    );
  }
}

abstract class _BlockyBlock extends BlockyBlock {
  const factory _BlockyBlock(
      {@JsonKey(name: 'i') required final String id,
      @JsonKey(name: 'a') required final BlockyBlockAction action,
      @JsonKey(name: 'o') required final BlockyLiteralType output,
      @JsonKey(name: 's') required final BlockyStyle style,
      @JsonKey(name: 'p') final Map<String, dynamic> args,
      @JsonKey(name: 'd') final List<String> dependent,
      @JsonKey(name: 'm') final String? parent}) = _$BlockyBlockImpl;
  const _BlockyBlock._() : super._();

  factory _BlockyBlock.fromJson(Map<String, dynamic> json) =
      _$BlockyBlockImpl.fromJson;

  @override
  @JsonKey(name: 'i')
  String get id;
  @override
  @JsonKey(name: 'a')
  BlockyBlockAction get action;
  @override
  @JsonKey(name: 'o')
  BlockyLiteralType get output;
  @override
  @JsonKey(name: 's')
  BlockyStyle get style;
  @override
  @JsonKey(name: 'p')
  Map<String, dynamic> get args;
  @override
  @JsonKey(name: 'd')
  List<String> get dependent;
  @override
  @JsonKey(name: 'm')
  String? get parent;
  @override
  @JsonKey(ignore: true)
  _$$BlockyBlockImplCopyWith<_$BlockyBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
