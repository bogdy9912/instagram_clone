// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsState> _$postsStateSerializer = new _$PostsStateSerializer();
Serializer<PostsInfo> _$postsInfoSerializer = new _$PostsInfoSerializer();

class _$PostsStateSerializer implements StructuredSerializer<PostsState> {
  @override
  final Iterable<Type> types = const [PostsState, _$PostsState];
  @override
  final String wireName = 'PostsState';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(PostsInfo)),
    ];

    return result;
  }

  @override
  PostsState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(PostsInfo)) as PostsInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$PostsInfoSerializer implements StructuredSerializer<PostsInfo> {
  @override
  final Iterable<Type> types = const [PostsInfo, _$PostsInfo];
  @override
  final String wireName = 'PostsInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'paths',
      serializers.serialize(object.paths,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  PostsInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'paths':
          result.paths.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostsState extends PostsState {
  @override
  final PostsInfo info;

  factory _$PostsState([void Function(PostsStateBuilder) updates]) =>
      (new PostsStateBuilder()..update(updates)).build();

  _$PostsState._({this.info}) : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('PostsState', 'info');
    }
  }

  @override
  PostsState rebuild(void Function(PostsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsStateBuilder toBuilder() => new PostsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsState && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc(0, info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsState')..add('info', info))
        .toString();
  }
}

class PostsStateBuilder implements Builder<PostsState, PostsStateBuilder> {
  _$PostsState _$v;

  PostsInfoBuilder _info;
  PostsInfoBuilder get info => _$this._info ??= new PostsInfoBuilder();
  set info(PostsInfoBuilder info) => _$this._info = info;

  PostsStateBuilder();

  PostsStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostsState;
  }

  @override
  void update(void Function(PostsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsState build() {
    _$PostsState _$result;
    try {
      _$result = _$v ?? new _$PostsState._(info: info.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PostsInfo extends PostsInfo {
  @override
  final BuiltList<String> paths;

  factory _$PostsInfo([void Function(PostsInfoBuilder) updates]) =>
      (new PostsInfoBuilder()..update(updates)).build();

  _$PostsInfo._({this.paths}) : super._() {
    if (paths == null) {
      throw new BuiltValueNullFieldError('PostsInfo', 'paths');
    }
  }

  @override
  PostsInfo rebuild(void Function(PostsInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsInfoBuilder toBuilder() => new PostsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsInfo && paths == other.paths;
  }

  @override
  int get hashCode {
    return $jf($jc(0, paths.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsInfo')..add('paths', paths))
        .toString();
  }
}

class PostsInfoBuilder implements Builder<PostsInfo, PostsInfoBuilder> {
  _$PostsInfo _$v;

  ListBuilder<String> _paths;
  ListBuilder<String> get paths => _$this._paths ??= new ListBuilder<String>();
  set paths(ListBuilder<String> paths) => _$this._paths = paths;

  PostsInfoBuilder();

  PostsInfoBuilder get _$this {
    if (_$v != null) {
      _paths = _$v.paths?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostsInfo;
  }

  @override
  void update(void Function(PostsInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsInfo build() {
    _$PostsInfo _$result;
    try {
      _$result = _$v ?? new _$PostsInfo._(paths: paths.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'paths';
        paths.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
