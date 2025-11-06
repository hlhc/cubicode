// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocky_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockyProgram _$BlockyProgramFromJson(Map<String, dynamic> json) {
  return _BlockyProgram.fromJson(json);
}

/// @nodoc
mixin _$BlockyProgram {
  @JsonKey(name: 'v')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'b')
  List<BlockyBlock> get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  List<BlockyPermission> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockyProgramCopyWith<BlockyProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockyProgramCopyWith<$Res> {
  factory $BlockyProgramCopyWith(
          BlockyProgram value, $Res Function(BlockyProgram) then) =
      _$BlockyProgramCopyWithImpl<$Res, BlockyProgram>;
  @useResult
  $Res call(
      {@JsonKey(name: 'v') String version,
      @JsonKey(name: 'b') List<BlockyBlock> blocks,
      @JsonKey(name: 'p') List<BlockyPermission> permissions});
}

/// @nodoc
class _$BlockyProgramCopyWithImpl<$Res, $Val extends BlockyProgram>
    implements $BlockyProgramCopyWith<$Res> {
  _$BlockyProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? blocks = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockyBlock>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<BlockyPermission>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockyProgramImplCopyWith<$Res>
    implements $BlockyProgramCopyWith<$Res> {
  factory _$$BlockyProgramImplCopyWith(
          _$BlockyProgramImpl value, $Res Function(_$BlockyProgramImpl) then) =
      __$$BlockyProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'v') String version,
      @JsonKey(name: 'b') List<BlockyBlock> blocks,
      @JsonKey(name: 'p') List<BlockyPermission> permissions});
}

/// @nodoc
class __$$BlockyProgramImplCopyWithImpl<$Res>
    extends _$BlockyProgramCopyWithImpl<$Res, _$BlockyProgramImpl>
    implements _$$BlockyProgramImplCopyWith<$Res> {
  __$$BlockyProgramImplCopyWithImpl(
      _$BlockyProgramImpl _value, $Res Function(_$BlockyProgramImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? blocks = null,
    Object? permissions = null,
  }) {
    return _then(_$BlockyProgramImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockyBlock>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<BlockyPermission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockyProgramImpl extends _BlockyProgram with DiagnosticableTreeMixin {
  const _$BlockyProgramImpl(
      {@JsonKey(name: 'v') required this.version,
      @JsonKey(name: 'b') required final List<BlockyBlock> blocks,
      @JsonKey(name: 'p') required final List<BlockyPermission> permissions})
      : _blocks = blocks,
        _permissions = permissions,
        super._();

  factory _$BlockyProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockyProgramImplFromJson(json);

  @override
  @JsonKey(name: 'v')
  final String version;
  final List<BlockyBlock> _blocks;
  @override
  @JsonKey(name: 'b')
  List<BlockyBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  final List<BlockyPermission> _permissions;
  @override
  @JsonKey(name: 'p')
  List<BlockyPermission> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockyProgram(version: $version, blocks: $blocks, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockyProgram'))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('blocks', blocks))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockyProgramImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_blocks),
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockyProgramImplCopyWith<_$BlockyProgramImpl> get copyWith =>
      __$$BlockyProgramImplCopyWithImpl<_$BlockyProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockyProgramImplToJson(
      this,
    );
  }
}

abstract class _BlockyProgram extends BlockyProgram {
  const factory _BlockyProgram(
      {@JsonKey(name: 'v') required final String version,
      @JsonKey(name: 'b') required final List<BlockyBlock> blocks,
      @JsonKey(name: 'p')
      required final List<BlockyPermission> permissions}) = _$BlockyProgramImpl;
  const _BlockyProgram._() : super._();

  factory _BlockyProgram.fromJson(Map<String, dynamic> json) =
      _$BlockyProgramImpl.fromJson;

  @override
  @JsonKey(name: 'v')
  String get version;
  @override
  @JsonKey(name: 'b')
  List<BlockyBlock> get blocks;
  @override
  @JsonKey(name: 'p')
  List<BlockyPermission> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$BlockyProgramImplCopyWith<_$BlockyProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
