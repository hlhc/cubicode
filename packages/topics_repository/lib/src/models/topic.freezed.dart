// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String get image => throw _privateConstructorUsedError;
  List<Content> get content => throw _privateConstructorUsedError;
  List<Quiz> get quizzes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'img') String image,
      List<Content> content,
      List<Quiz> quizzes});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? content = null,
    Object? quizzes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'img') String image,
      List<Content> content,
      List<Quiz> quizzes});
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? content = null,
    Object? quizzes = null,
  }) {
    return _then(_$TopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicImpl extends _Topic with DiagnosticableTreeMixin {
  const _$TopicImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'img') required this.image,
      required final List<Content> content,
      required final List<Quiz> quizzes})
      : _content = content,
        _quizzes = quizzes,
        super._();

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'img')
  final String image;
  final List<Content> _content;
  @override
  List<Content> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  final List<Quiz> _quizzes;
  @override
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topic(id: $id, title: $title, image: $image, content: $content, quizzes: $quizzes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('quizzes', quizzes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      image,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic extends Topic {
  const factory _Topic(
      {required final String id,
      required final String title,
      @JsonKey(name: 'img') required final String image,
      required final List<Content> content,
      required final List<Quiz> quizzes}) = _$TopicImpl;
  const _Topic._() : super._();

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'img')
  String get image;
  @override
  List<Content> get content;
  @override
  List<Quiz> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
