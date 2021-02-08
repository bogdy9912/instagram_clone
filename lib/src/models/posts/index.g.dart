// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsState> _$postsStateSerializer = new _$PostsStateSerializer();
Serializer<PostsInfo> _$postsInfoSerializer = new _$PostsInfoSerializer();
Serializer<Post> _$postSerializer = new _$PostSerializer();
Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

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
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Post)])),
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
      'userPosts',
      serializers.serialize(object.userPosts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Post)])),
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
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Post)])));
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<Object>);
          break;
        case 'userPosts':
          result.userPosts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
              as BuiltList<Object>);
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
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AppUser)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.lat != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(object.lat,
            specifiedType: const FullType(double)));
    }
    if (object.lng != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(object.lng,
            specifiedType: const FullType(double)));
    }
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
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppUser)]))
              as BuiltList<Object>);
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object> serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'images',
      serializers.serialize(object.images,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'likes',
      serializers.serialize(object.likes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.lat != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(object.lat,
            specifiedType: const FullType(double)));
    }
    if (object.lng != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(object.lng,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsState extends PostsState {
  @override
  final PostsInfo info;
  @override
  final BuiltMap<String, Post> posts;
  @override
  final BuiltList<Comment> comments;
  @override
  final BuiltList<Post> userPosts;

  factory _$PostsState([void Function(PostsStateBuilder) updates]) =>
      (new PostsStateBuilder()..update(updates)).build();

  _$PostsState._({this.info, this.posts, this.comments, this.userPosts})
      : super._() {
    if (info == null) {
      throw new BuiltValueNullFieldError('PostsState', 'info');
    }
    if (posts == null) {
      throw new BuiltValueNullFieldError('PostsState', 'posts');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('PostsState', 'comments');
    }
    if (userPosts == null) {
      throw new BuiltValueNullFieldError('PostsState', 'userPosts');
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
    return other is PostsState &&
        info == other.info &&
        posts == other.posts &&
        comments == other.comments &&
        userPosts == other.userPosts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, info.hashCode), posts.hashCode), comments.hashCode),
        userPosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsState')
          ..add('info', info)
          ..add('posts', posts)
          ..add('comments', comments)
          ..add('userPosts', userPosts))
        .toString();
  }
}

class PostsStateBuilder implements Builder<PostsState, PostsStateBuilder> {
  _$PostsState _$v;

  PostsInfoBuilder _info;
  PostsInfoBuilder get info => _$this._info ??= new PostsInfoBuilder();
  set info(PostsInfoBuilder info) => _$this._info = info;

  MapBuilder<String, Post> _posts;
  MapBuilder<String, Post> get posts =>
      _$this._posts ??= new MapBuilder<String, Post>();
  set posts(MapBuilder<String, Post> posts) => _$this._posts = posts;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  ListBuilder<Post> _userPosts;
  ListBuilder<Post> get userPosts =>
      _$this._userPosts ??= new ListBuilder<Post>();
  set userPosts(ListBuilder<Post> userPosts) => _$this._userPosts = userPosts;

  PostsStateBuilder();

  PostsStateBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _posts = _$v.posts?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _userPosts = _$v.userPosts?.toBuilder();
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
      _$result = _$v ??
          new _$PostsState._(
              info: info.build(),
              posts: posts.build(),
              comments: comments.build(),
              userPosts: userPosts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'comments';
        comments.build();
        _$failedField = 'userPosts';
        userPosts.build();
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
  @override
  final BuiltList<String> tags;
  @override
  final String description;
  @override
  final BuiltList<AppUser> users;
  @override
  final double lat;
  @override
  final double lng;

  factory _$PostsInfo([void Function(PostsInfoBuilder) updates]) =>
      (new PostsInfoBuilder()..update(updates)).build();

  _$PostsInfo._(
      {this.paths, this.tags, this.description, this.users, this.lat, this.lng})
      : super._() {
    if (paths == null) {
      throw new BuiltValueNullFieldError('PostsInfo', 'paths');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('PostsInfo', 'tags');
    }
    if (users == null) {
      throw new BuiltValueNullFieldError('PostsInfo', 'users');
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
    return other is PostsInfo &&
        paths == other.paths &&
        tags == other.tags &&
        description == other.description &&
        users == other.users &&
        lat == other.lat &&
        lng == other.lng;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, paths.hashCode), tags.hashCode),
                    description.hashCode),
                users.hashCode),
            lat.hashCode),
        lng.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsInfo')
          ..add('paths', paths)
          ..add('tags', tags)
          ..add('description', description)
          ..add('users', users)
          ..add('lat', lat)
          ..add('lng', lng))
        .toString();
  }
}

class PostsInfoBuilder implements Builder<PostsInfo, PostsInfoBuilder> {
  _$PostsInfo _$v;

  ListBuilder<String> _paths;
  ListBuilder<String> get paths => _$this._paths ??= new ListBuilder<String>();
  set paths(ListBuilder<String> paths) => _$this._paths = paths;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<AppUser> _users;
  ListBuilder<AppUser> get users =>
      _$this._users ??= new ListBuilder<AppUser>();
  set users(ListBuilder<AppUser> users) => _$this._users = users;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lng;
  double get lng => _$this._lng;
  set lng(double lng) => _$this._lng = lng;

  PostsInfoBuilder();

  PostsInfoBuilder get _$this {
    if (_$v != null) {
      _paths = _$v.paths?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _description = _$v.description;
      _users = _$v.users?.toBuilder();
      _lat = _$v.lat;
      _lng = _$v.lng;
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
      _$result = _$v ??
          new _$PostsInfo._(
              paths: paths.build(),
              tags: tags.build(),
              description: description,
              users: users.build(),
              lat: lat,
              lng: lng);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'paths';
        paths.build();
        _$failedField = 'tags';
        tags.build();

        _$failedField = 'users';
        users.build();
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

class _$Post extends Post {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String description;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final BuiltList<String> users;
  @override
  final BuiltList<String> images;
  @override
  final BuiltList<String> tags;
  @override
  final BuiltList<String> likes;

  factory _$Post([void Function(PostBuilder) updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.uid,
      this.description,
      this.lat,
      this.lng,
      this.users,
      this.images,
      this.tags,
      this.likes})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Post', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('Post', 'uid');
    }
    if (users == null) {
      throw new BuiltValueNullFieldError('Post', 'users');
    }
    if (images == null) {
      throw new BuiltValueNullFieldError('Post', 'images');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('Post', 'tags');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Post', 'likes');
    }
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        uid == other.uid &&
        description == other.description &&
        lat == other.lat &&
        lng == other.lng &&
        users == other.users &&
        images == other.images &&
        tags == other.tags &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), uid.hashCode),
                                description.hashCode),
                            lat.hashCode),
                        lng.hashCode),
                    users.hashCode),
                images.hashCode),
            tags.hashCode),
        likes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('uid', uid)
          ..add('description', description)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('users', users)
          ..add('images', images)
          ..add('tags', tags)
          ..add('likes', likes))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lng;
  double get lng => _$this._lng;
  set lng(double lng) => _$this._lng = lng;

  ListBuilder<String> _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String> users) => _$this._users = users;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  ListBuilder<String> _likes;
  ListBuilder<String> get likes => _$this._likes ??= new ListBuilder<String>();
  set likes(ListBuilder<String> likes) => _$this._likes = likes;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _description = _$v.description;
      _lat = _$v.lat;
      _lng = _$v.lng;
      _users = _$v.users?.toBuilder();
      _images = _$v.images?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _likes = _$v.likes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              id: id,
              uid: uid,
              description: description,
              lat: lat,
              lng: lng,
              users: users.build(),
              images: images.build(),
              tags: tags.build(),
              likes: likes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
        _$failedField = 'images';
        images.build();
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'likes';
        likes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Comment extends Comment {
  @override
  final String id;
  @override
  final String text;
  @override
  final String userId;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.id, this.text, this.userId}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Comment', 'id');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Comment', 'text');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('Comment', 'userId');
    }
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        text == other.text &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), text.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('text', text)
          ..add('userId', userId))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _text = _$v.text;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ?? new _$Comment._(id: id, text: text, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
