// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of posts_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreatePostTearOff {
  const _$CreatePostTearOff();

// ignore: unused_element
  CreatePost$ call() {
    return const CreatePost$();
  }

// ignore: unused_element
  CreatePostSuccessful successful(Post post) {
    return CreatePostSuccessful(
      post,
    );
  }

// ignore: unused_element
  CreatePostError error(Object error) {
    return CreatePostError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreatePost = _$CreatePostTearOff();

/// @nodoc
mixin _$CreatePost {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreatePostCopyWith<$Res> {
  factory $CreatePostCopyWith(
          CreatePost value, $Res Function(CreatePost) then) =
      _$CreatePostCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostCopyWithImpl<$Res> implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(this._value, this._then);

  final CreatePost _value;
  // ignore: unused_field
  final $Res Function(CreatePost) _then;
}

/// @nodoc
abstract class $CreatePost$CopyWith<$Res> {
  factory $CreatePost$CopyWith(
          CreatePost$ value, $Res Function(CreatePost$) then) =
      _$CreatePost$CopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePost$CopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePost$CopyWith<$Res> {
  _$CreatePost$CopyWithImpl(
      CreatePost$ _value, $Res Function(CreatePost$) _then)
      : super(_value, (v) => _then(v as CreatePost$));

  @override
  CreatePost$ get _value => super._value as CreatePost$;
}

/// @nodoc
class _$CreatePost$ implements CreatePost$ {
  const _$CreatePost$();

  @override
  String toString() {
    return 'CreatePost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatePost$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreatePost$ implements CreatePost {
  const factory CreatePost$() = _$CreatePost$;
}

/// @nodoc
abstract class $CreatePostSuccessfulCopyWith<$Res> {
  factory $CreatePostSuccessfulCopyWith(CreatePostSuccessful value,
          $Res Function(CreatePostSuccessful) then) =
      _$CreatePostSuccessfulCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$CreatePostSuccessfulCopyWithImpl<$Res>
    extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostSuccessfulCopyWith<$Res> {
  _$CreatePostSuccessfulCopyWithImpl(
      CreatePostSuccessful _value, $Res Function(CreatePostSuccessful) _then)
      : super(_value, (v) => _then(v as CreatePostSuccessful));

  @override
  CreatePostSuccessful get _value => super._value as CreatePostSuccessful;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(CreatePostSuccessful(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

/// @nodoc
class _$CreatePostSuccessful implements CreatePostSuccessful {
  const _$CreatePostSuccessful(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'CreatePost.successful(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePostSuccessful &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  $CreatePostSuccessfulCopyWith<CreatePostSuccessful> get copyWith =>
      _$CreatePostSuccessfulCopyWithImpl<CreatePostSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreatePostSuccessful implements CreatePost {
  const factory CreatePostSuccessful(Post post) = _$CreatePostSuccessful;

  Post get post;
  $CreatePostSuccessfulCopyWith<CreatePostSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreatePostErrorCopyWith<$Res> {
  factory $CreatePostErrorCopyWith(
          CreatePostError value, $Res Function(CreatePostError) then) =
      _$CreatePostErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreatePostErrorCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostErrorCopyWith<$Res> {
  _$CreatePostErrorCopyWithImpl(
      CreatePostError _value, $Res Function(CreatePostError) _then)
      : super(_value, (v) => _then(v as CreatePostError));

  @override
  CreatePostError get _value => super._value as CreatePostError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreatePostError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreatePostError implements CreatePostError {
  const _$CreatePostError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreatePost.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePostError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreatePostErrorCopyWith<CreatePostError> get copyWith =>
      _$CreatePostErrorCopyWithImpl<CreatePostError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreatePostError implements CreatePost, ErrorAction {
  const factory CreatePostError(Object error) = _$CreatePostError;

  Object get error;
  $CreatePostErrorCopyWith<CreatePostError> get copyWith;
}

/// @nodoc
class _$UpdatePostInfoTearOff {
  const _$UpdatePostInfoTearOff();

// ignore: unused_element
  UpdatePostInfo$ call(
      {String addImage,
      String removeImage,
      double lat,
      double lng,
      String description,
      AppUser addUser,
      AppUser removeUser}) {
    return UpdatePostInfo$(
      addImage: addImage,
      removeImage: removeImage,
      lat: lat,
      lng: lng,
      description: description,
      addUser: addUser,
      removeUser: removeUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePostInfo = _$UpdatePostInfoTearOff();

/// @nodoc
mixin _$UpdatePostInfo {
  String get addImage;
  String get removeImage;
  double get lat;
  double get lng;
  String get description;
  AppUser get addUser;
  AppUser get removeUser;

  $UpdatePostInfoCopyWith<UpdatePostInfo> get copyWith;
}

/// @nodoc
abstract class $UpdatePostInfoCopyWith<$Res> {
  factory $UpdatePostInfoCopyWith(
          UpdatePostInfo value, $Res Function(UpdatePostInfo) then) =
      _$UpdatePostInfoCopyWithImpl<$Res>;
  $Res call(
      {String addImage,
      String removeImage,
      double lat,
      double lng,
      String description,
      AppUser addUser,
      AppUser removeUser});
}

/// @nodoc
class _$UpdatePostInfoCopyWithImpl<$Res>
    implements $UpdatePostInfoCopyWith<$Res> {
  _$UpdatePostInfoCopyWithImpl(this._value, this._then);

  final UpdatePostInfo _value;
  // ignore: unused_field
  final $Res Function(UpdatePostInfo) _then;

  @override
  $Res call({
    Object addImage = freezed,
    Object removeImage = freezed,
    Object lat = freezed,
    Object lng = freezed,
    Object description = freezed,
    Object addUser = freezed,
    Object removeUser = freezed,
  }) {
    return _then(_value.copyWith(
      addImage: addImage == freezed ? _value.addImage : addImage as String,
      removeImage:
          removeImage == freezed ? _value.removeImage : removeImage as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lng: lng == freezed ? _value.lng : lng as double,
      description:
          description == freezed ? _value.description : description as String,
      addUser: addUser == freezed ? _value.addUser : addUser as AppUser,
      removeUser:
          removeUser == freezed ? _value.removeUser : removeUser as AppUser,
    ));
  }
}

/// @nodoc
abstract class $UpdatePostInfo$CopyWith<$Res>
    implements $UpdatePostInfoCopyWith<$Res> {
  factory $UpdatePostInfo$CopyWith(
          UpdatePostInfo$ value, $Res Function(UpdatePostInfo$) then) =
      _$UpdatePostInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String addImage,
      String removeImage,
      double lat,
      double lng,
      String description,
      AppUser addUser,
      AppUser removeUser});
}

/// @nodoc
class _$UpdatePostInfo$CopyWithImpl<$Res>
    extends _$UpdatePostInfoCopyWithImpl<$Res>
    implements $UpdatePostInfo$CopyWith<$Res> {
  _$UpdatePostInfo$CopyWithImpl(
      UpdatePostInfo$ _value, $Res Function(UpdatePostInfo$) _then)
      : super(_value, (v) => _then(v as UpdatePostInfo$));

  @override
  UpdatePostInfo$ get _value => super._value as UpdatePostInfo$;

  @override
  $Res call({
    Object addImage = freezed,
    Object removeImage = freezed,
    Object lat = freezed,
    Object lng = freezed,
    Object description = freezed,
    Object addUser = freezed,
    Object removeUser = freezed,
  }) {
    return _then(UpdatePostInfo$(
      addImage: addImage == freezed ? _value.addImage : addImage as String,
      removeImage:
          removeImage == freezed ? _value.removeImage : removeImage as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lng: lng == freezed ? _value.lng : lng as double,
      description:
          description == freezed ? _value.description : description as String,
      addUser: addUser == freezed ? _value.addUser : addUser as AppUser,
      removeUser:
          removeUser == freezed ? _value.removeUser : removeUser as AppUser,
    ));
  }
}

/// @nodoc
class _$UpdatePostInfo$ implements UpdatePostInfo$ {
  const _$UpdatePostInfo$(
      {this.addImage,
      this.removeImage,
      this.lat,
      this.lng,
      this.description,
      this.addUser,
      this.removeUser});

  @override
  final String addImage;
  @override
  final String removeImage;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String description;
  @override
  final AppUser addUser;
  @override
  final AppUser removeUser;

  @override
  String toString() {
    return 'UpdatePostInfo(addImage: $addImage, removeImage: $removeImage, lat: $lat, lng: $lng, description: $description, addUser: $addUser, removeUser: $removeUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePostInfo$ &&
            (identical(other.addImage, addImage) ||
                const DeepCollectionEquality()
                    .equals(other.addImage, addImage)) &&
            (identical(other.removeImage, removeImage) ||
                const DeepCollectionEquality()
                    .equals(other.removeImage, removeImage)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.addUser, addUser) ||
                const DeepCollectionEquality()
                    .equals(other.addUser, addUser)) &&
            (identical(other.removeUser, removeUser) ||
                const DeepCollectionEquality()
                    .equals(other.removeUser, removeUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addImage) ^
      const DeepCollectionEquality().hash(removeImage) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(addUser) ^
      const DeepCollectionEquality().hash(removeUser);

  @override
  $UpdatePostInfo$CopyWith<UpdatePostInfo$> get copyWith =>
      _$UpdatePostInfo$CopyWithImpl<UpdatePostInfo$>(this, _$identity);
}

abstract class UpdatePostInfo$ implements UpdatePostInfo {
  const factory UpdatePostInfo$(
      {String addImage,
      String removeImage,
      double lat,
      double lng,
      String description,
      AppUser addUser,
      AppUser removeUser}) = _$UpdatePostInfo$;

  @override
  String get addImage;
  @override
  String get removeImage;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String get description;
  @override
  AppUser get addUser;
  @override
  AppUser get removeUser;
  @override
  $UpdatePostInfo$CopyWith<UpdatePostInfo$> get copyWith;
}

/// @nodoc
class _$GetFeedTearOff {
  const _$GetFeedTearOff();

// ignore: unused_element
  GetFeed$ call() {
    return const GetFeed$();
  }

// ignore: unused_element
  GetFeedSuccessful successful(Map<String, Post> posts) {
    return GetFeedSuccessful(
      posts,
    );
  }

// ignore: unused_element
  GetFeedError error(Object error) {
    return GetFeedError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetFeed = _$GetFeedTearOff();

/// @nodoc
mixin _$GetFeed {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Map<String, Post> posts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Map<String, Post> posts),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFeed$ value), {
    @required Result successful(GetFeedSuccessful value),
    @required Result error(GetFeedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFeed$ value), {
    Result successful(GetFeedSuccessful value),
    Result error(GetFeedError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetFeedCopyWith<$Res> {
  factory $GetFeedCopyWith(GetFeed value, $Res Function(GetFeed) then) =
      _$GetFeedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeedCopyWithImpl<$Res> implements $GetFeedCopyWith<$Res> {
  _$GetFeedCopyWithImpl(this._value, this._then);

  final GetFeed _value;
  // ignore: unused_field
  final $Res Function(GetFeed) _then;
}

/// @nodoc
abstract class $GetFeed$CopyWith<$Res> {
  factory $GetFeed$CopyWith(GetFeed$ value, $Res Function(GetFeed$) then) =
      _$GetFeed$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeed$CopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeed$CopyWith<$Res> {
  _$GetFeed$CopyWithImpl(GetFeed$ _value, $Res Function(GetFeed$) _then)
      : super(_value, (v) => _then(v as GetFeed$));

  @override
  GetFeed$ get _value => super._value as GetFeed$;
}

/// @nodoc
class _$GetFeed$ implements GetFeed$ {
  const _$GetFeed$();

  @override
  String toString() {
    return 'GetFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFeed$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Map<String, Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Map<String, Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFeed$ value), {
    @required Result successful(GetFeedSuccessful value),
    @required Result error(GetFeedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFeed$ value), {
    Result successful(GetFeedSuccessful value),
    Result error(GetFeedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetFeed$ implements GetFeed {
  const factory GetFeed$() = _$GetFeed$;
}

/// @nodoc
abstract class $GetFeedSuccessfulCopyWith<$Res> {
  factory $GetFeedSuccessfulCopyWith(
          GetFeedSuccessful value, $Res Function(GetFeedSuccessful) then) =
      _$GetFeedSuccessfulCopyWithImpl<$Res>;
  $Res call({Map<String, Post> posts});
}

/// @nodoc
class _$GetFeedSuccessfulCopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeedSuccessfulCopyWith<$Res> {
  _$GetFeedSuccessfulCopyWithImpl(
      GetFeedSuccessful _value, $Res Function(GetFeedSuccessful) _then)
      : super(_value, (v) => _then(v as GetFeedSuccessful));

  @override
  GetFeedSuccessful get _value => super._value as GetFeedSuccessful;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(GetFeedSuccessful(
      posts == freezed ? _value.posts : posts as Map<String, Post>,
    ));
  }
}

/// @nodoc
class _$GetFeedSuccessful implements GetFeedSuccessful {
  const _$GetFeedSuccessful(this.posts) : assert(posts != null);

  @override
  final Map<String, Post> posts;

  @override
  String toString() {
    return 'GetFeed.successful(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedSuccessful &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $GetFeedSuccessfulCopyWith<GetFeedSuccessful> get copyWith =>
      _$GetFeedSuccessfulCopyWithImpl<GetFeedSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Map<String, Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Map<String, Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFeed$ value), {
    @required Result successful(GetFeedSuccessful value),
    @required Result error(GetFeedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFeed$ value), {
    Result successful(GetFeedSuccessful value),
    Result error(GetFeedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetFeedSuccessful implements GetFeed {
  const factory GetFeedSuccessful(Map<String, Post> posts) =
      _$GetFeedSuccessful;

  Map<String, Post> get posts;
  $GetFeedSuccessfulCopyWith<GetFeedSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetFeedErrorCopyWith<$Res> {
  factory $GetFeedErrorCopyWith(
          GetFeedError value, $Res Function(GetFeedError) then) =
      _$GetFeedErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetFeedErrorCopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeedErrorCopyWith<$Res> {
  _$GetFeedErrorCopyWithImpl(
      GetFeedError _value, $Res Function(GetFeedError) _then)
      : super(_value, (v) => _then(v as GetFeedError));

  @override
  GetFeedError get _value => super._value as GetFeedError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetFeedError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetFeedError implements GetFeedError {
  const _$GetFeedError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetFeed.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetFeedErrorCopyWith<GetFeedError> get copyWith =>
      _$GetFeedErrorCopyWithImpl<GetFeedError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Map<String, Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Map<String, Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetFeed$ value), {
    @required Result successful(GetFeedSuccessful value),
    @required Result error(GetFeedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetFeed$ value), {
    Result successful(GetFeedSuccessful value),
    Result error(GetFeedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetFeedError implements GetFeed, ErrorAction {
  const factory GetFeedError(Object error) = _$GetFeedError;

  Object get error;
  $GetFeedErrorCopyWith<GetFeedError> get copyWith;
}

/// @nodoc
class _$UpdateLikePostTearOff {
  const _$UpdateLikePostTearOff();

// ignore: unused_element
  UpdateLikePost$ call({String id, String add, String remove}) {
    return UpdateLikePost$(
      id: id,
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateLikePostSuccessful successful({String id, String add, String remove}) {
    return UpdateLikePostSuccessful(
      id: id,
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateLikePostError error(Object error) {
    return UpdateLikePostError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateLikePost = _$UpdateLikePostTearOff();

/// @nodoc
mixin _$UpdateLikePost {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String add, String remove), {
    @required Result successful(String id, String add, String remove),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String add, String remove), {
    Result successful(String id, String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    @required Result successful(UpdateLikePostSuccessful value),
    @required Result error(UpdateLikePostError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    Result successful(UpdateLikePostSuccessful value),
    Result error(UpdateLikePostError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateLikePostCopyWith<$Res> {
  factory $UpdateLikePostCopyWith(
          UpdateLikePost value, $Res Function(UpdateLikePost) then) =
      _$UpdateLikePostCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateLikePostCopyWithImpl<$Res>
    implements $UpdateLikePostCopyWith<$Res> {
  _$UpdateLikePostCopyWithImpl(this._value, this._then);

  final UpdateLikePost _value;
  // ignore: unused_field
  final $Res Function(UpdateLikePost) _then;
}

/// @nodoc
abstract class $UpdateLikePost$CopyWith<$Res> {
  factory $UpdateLikePost$CopyWith(
          UpdateLikePost$ value, $Res Function(UpdateLikePost$) then) =
      _$UpdateLikePost$CopyWithImpl<$Res>;
  $Res call({String id, String add, String remove});
}

/// @nodoc
class _$UpdateLikePost$CopyWithImpl<$Res>
    extends _$UpdateLikePostCopyWithImpl<$Res>
    implements $UpdateLikePost$CopyWith<$Res> {
  _$UpdateLikePost$CopyWithImpl(
      UpdateLikePost$ _value, $Res Function(UpdateLikePost$) _then)
      : super(_value, (v) => _then(v as UpdateLikePost$));

  @override
  UpdateLikePost$ get _value => super._value as UpdateLikePost$;

  @override
  $Res call({
    Object id = freezed,
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateLikePost$(
      id: id == freezed ? _value.id : id as String,
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateLikePost$ implements UpdateLikePost$ {
  const _$UpdateLikePost$({this.id, this.add, this.remove});

  @override
  final String id;
  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateLikePost(id: $id, add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLikePost$ &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateLikePost$CopyWith<UpdateLikePost$> get copyWith =>
      _$UpdateLikePost$CopyWithImpl<UpdateLikePost$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String add, String remove), {
    @required Result successful(String id, String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(id, add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String add, String remove), {
    Result successful(String id, String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id, add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    @required Result successful(UpdateLikePostSuccessful value),
    @required Result error(UpdateLikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    Result successful(UpdateLikePostSuccessful value),
    Result error(UpdateLikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateLikePost$ implements UpdateLikePost {
  const factory UpdateLikePost$({String id, String add, String remove}) =
      _$UpdateLikePost$;

  String get id;
  String get add;
  String get remove;
  $UpdateLikePost$CopyWith<UpdateLikePost$> get copyWith;
}

/// @nodoc
abstract class $UpdateLikePostSuccessfulCopyWith<$Res> {
  factory $UpdateLikePostSuccessfulCopyWith(UpdateLikePostSuccessful value,
          $Res Function(UpdateLikePostSuccessful) then) =
      _$UpdateLikePostSuccessfulCopyWithImpl<$Res>;
  $Res call({String id, String add, String remove});
}

/// @nodoc
class _$UpdateLikePostSuccessfulCopyWithImpl<$Res>
    extends _$UpdateLikePostCopyWithImpl<$Res>
    implements $UpdateLikePostSuccessfulCopyWith<$Res> {
  _$UpdateLikePostSuccessfulCopyWithImpl(UpdateLikePostSuccessful _value,
      $Res Function(UpdateLikePostSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateLikePostSuccessful));

  @override
  UpdateLikePostSuccessful get _value =>
      super._value as UpdateLikePostSuccessful;

  @override
  $Res call({
    Object id = freezed,
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateLikePostSuccessful(
      id: id == freezed ? _value.id : id as String,
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateLikePostSuccessful implements UpdateLikePostSuccessful {
  const _$UpdateLikePostSuccessful({this.id, this.add, this.remove});

  @override
  final String id;
  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateLikePost.successful(id: $id, add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLikePostSuccessful &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateLikePostSuccessfulCopyWith<UpdateLikePostSuccessful> get copyWith =>
      _$UpdateLikePostSuccessfulCopyWithImpl<UpdateLikePostSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String add, String remove), {
    @required Result successful(String id, String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(id, add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String add, String remove), {
    Result successful(String id, String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(id, add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    @required Result successful(UpdateLikePostSuccessful value),
    @required Result error(UpdateLikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    Result successful(UpdateLikePostSuccessful value),
    Result error(UpdateLikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateLikePostSuccessful implements UpdateLikePost {
  const factory UpdateLikePostSuccessful(
      {String id, String add, String remove}) = _$UpdateLikePostSuccessful;

  String get id;
  String get add;
  String get remove;
  $UpdateLikePostSuccessfulCopyWith<UpdateLikePostSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdateLikePostErrorCopyWith<$Res> {
  factory $UpdateLikePostErrorCopyWith(
          UpdateLikePostError value, $Res Function(UpdateLikePostError) then) =
      _$UpdateLikePostErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateLikePostErrorCopyWithImpl<$Res>
    extends _$UpdateLikePostCopyWithImpl<$Res>
    implements $UpdateLikePostErrorCopyWith<$Res> {
  _$UpdateLikePostErrorCopyWithImpl(
      UpdateLikePostError _value, $Res Function(UpdateLikePostError) _then)
      : super(_value, (v) => _then(v as UpdateLikePostError));

  @override
  UpdateLikePostError get _value => super._value as UpdateLikePostError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateLikePostError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateLikePostError implements UpdateLikePostError {
  const _$UpdateLikePostError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateLikePost.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLikePostError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateLikePostErrorCopyWith<UpdateLikePostError> get copyWith =>
      _$UpdateLikePostErrorCopyWithImpl<UpdateLikePostError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String id, String add, String remove), {
    @required Result successful(String id, String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String id, String add, String remove), {
    Result successful(String id, String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    @required Result successful(UpdateLikePostSuccessful value),
    @required Result error(UpdateLikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateLikePost$ value), {
    Result successful(UpdateLikePostSuccessful value),
    Result error(UpdateLikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateLikePostError implements UpdateLikePost, ErrorAction {
  const factory UpdateLikePostError(Object error) = _$UpdateLikePostError;

  Object get error;
  $UpdateLikePostErrorCopyWith<UpdateLikePostError> get copyWith;
}

/// @nodoc
class _$UpdateSavedPostsTearOff {
  const _$UpdateSavedPostsTearOff();

// ignore: unused_element
  UpdateSavedPosts$ call({String add, String remove}) {
    return UpdateSavedPosts$(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateSavedPostsSuccessful successful({String add, String remove}) {
    return UpdateSavedPostsSuccessful(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateSavedPostsError error(Object error) {
    return UpdateSavedPostsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSavedPosts = _$UpdateSavedPostsTearOff();

/// @nodoc
mixin _$UpdateSavedPosts {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    @required Result successful(UpdateSavedPostsSuccessful value),
    @required Result error(UpdateSavedPostsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    Result successful(UpdateSavedPostsSuccessful value),
    Result error(UpdateSavedPostsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateSavedPostsCopyWith<$Res> {
  factory $UpdateSavedPostsCopyWith(
          UpdateSavedPosts value, $Res Function(UpdateSavedPosts) then) =
      _$UpdateSavedPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSavedPostsCopyWithImpl<$Res>
    implements $UpdateSavedPostsCopyWith<$Res> {
  _$UpdateSavedPostsCopyWithImpl(this._value, this._then);

  final UpdateSavedPosts _value;
  // ignore: unused_field
  final $Res Function(UpdateSavedPosts) _then;
}

/// @nodoc
abstract class $UpdateSavedPosts$CopyWith<$Res> {
  factory $UpdateSavedPosts$CopyWith(
          UpdateSavedPosts$ value, $Res Function(UpdateSavedPosts$) then) =
      _$UpdateSavedPosts$CopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateSavedPosts$CopyWithImpl<$Res>
    extends _$UpdateSavedPostsCopyWithImpl<$Res>
    implements $UpdateSavedPosts$CopyWith<$Res> {
  _$UpdateSavedPosts$CopyWithImpl(
      UpdateSavedPosts$ _value, $Res Function(UpdateSavedPosts$) _then)
      : super(_value, (v) => _then(v as UpdateSavedPosts$));

  @override
  UpdateSavedPosts$ get _value => super._value as UpdateSavedPosts$;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateSavedPosts$(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateSavedPosts$ implements UpdateSavedPosts$ {
  const _$UpdateSavedPosts$({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateSavedPosts(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSavedPosts$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateSavedPosts$CopyWith<UpdateSavedPosts$> get copyWith =>
      _$UpdateSavedPosts$CopyWithImpl<UpdateSavedPosts$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    @required Result successful(UpdateSavedPostsSuccessful value),
    @required Result error(UpdateSavedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    Result successful(UpdateSavedPostsSuccessful value),
    Result error(UpdateSavedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateSavedPosts$ implements UpdateSavedPosts {
  const factory UpdateSavedPosts$({String add, String remove}) =
      _$UpdateSavedPosts$;

  String get add;
  String get remove;
  $UpdateSavedPosts$CopyWith<UpdateSavedPosts$> get copyWith;
}

/// @nodoc
abstract class $UpdateSavedPostsSuccessfulCopyWith<$Res> {
  factory $UpdateSavedPostsSuccessfulCopyWith(UpdateSavedPostsSuccessful value,
          $Res Function(UpdateSavedPostsSuccessful) then) =
      _$UpdateSavedPostsSuccessfulCopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateSavedPostsSuccessfulCopyWithImpl<$Res>
    extends _$UpdateSavedPostsCopyWithImpl<$Res>
    implements $UpdateSavedPostsSuccessfulCopyWith<$Res> {
  _$UpdateSavedPostsSuccessfulCopyWithImpl(UpdateSavedPostsSuccessful _value,
      $Res Function(UpdateSavedPostsSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateSavedPostsSuccessful));

  @override
  UpdateSavedPostsSuccessful get _value =>
      super._value as UpdateSavedPostsSuccessful;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateSavedPostsSuccessful(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateSavedPostsSuccessful implements UpdateSavedPostsSuccessful {
  const _$UpdateSavedPostsSuccessful({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateSavedPosts.successful(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSavedPostsSuccessful &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateSavedPostsSuccessfulCopyWith<UpdateSavedPostsSuccessful>
      get copyWith =>
          _$UpdateSavedPostsSuccessfulCopyWithImpl<UpdateSavedPostsSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    @required Result successful(UpdateSavedPostsSuccessful value),
    @required Result error(UpdateSavedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    Result successful(UpdateSavedPostsSuccessful value),
    Result error(UpdateSavedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateSavedPostsSuccessful implements UpdateSavedPosts {
  const factory UpdateSavedPostsSuccessful({String add, String remove}) =
      _$UpdateSavedPostsSuccessful;

  String get add;
  String get remove;
  $UpdateSavedPostsSuccessfulCopyWith<UpdateSavedPostsSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdateSavedPostsErrorCopyWith<$Res> {
  factory $UpdateSavedPostsErrorCopyWith(UpdateSavedPostsError value,
          $Res Function(UpdateSavedPostsError) then) =
      _$UpdateSavedPostsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateSavedPostsErrorCopyWithImpl<$Res>
    extends _$UpdateSavedPostsCopyWithImpl<$Res>
    implements $UpdateSavedPostsErrorCopyWith<$Res> {
  _$UpdateSavedPostsErrorCopyWithImpl(
      UpdateSavedPostsError _value, $Res Function(UpdateSavedPostsError) _then)
      : super(_value, (v) => _then(v as UpdateSavedPostsError));

  @override
  UpdateSavedPostsError get _value => super._value as UpdateSavedPostsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateSavedPostsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateSavedPostsError implements UpdateSavedPostsError {
  const _$UpdateSavedPostsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateSavedPosts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSavedPostsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateSavedPostsErrorCopyWith<UpdateSavedPostsError> get copyWith =>
      _$UpdateSavedPostsErrorCopyWithImpl<UpdateSavedPostsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    @required Result successful(UpdateSavedPostsSuccessful value),
    @required Result error(UpdateSavedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateSavedPosts$ value), {
    Result successful(UpdateSavedPostsSuccessful value),
    Result error(UpdateSavedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateSavedPostsError implements UpdateSavedPosts, ErrorAction {
  const factory UpdateSavedPostsError(Object error) = _$UpdateSavedPostsError;

  Object get error;
  $UpdateSavedPostsErrorCopyWith<UpdateSavedPostsError> get copyWith;
}

/// @nodoc
class _$GetCommentsTearOff {
  const _$GetCommentsTearOff();

// ignore: unused_element
  GetComments$ call(String postId) {
    return GetComments$(
      postId,
    );
  }

// ignore: unused_element
  GetCommentsSuccessful successful(List<Comment> comments) {
    return GetCommentsSuccessful(
      comments,
    );
  }

// ignore: unused_element
  GetCommentsEvent event(List<Comment> comments) {
    return GetCommentsEvent(
      comments,
    );
  }

// ignore: unused_element
  GetCommentsError error(Object error) {
    return GetCommentsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetComments = _$GetCommentsTearOff();

/// @nodoc
mixin _$GetComments {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId), {
    @required Result successful(List<Comment> comments),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId), {
    Result successful(List<Comment> comments),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetComments$ value), {
    @required Result successful(GetCommentsSuccessful value),
    @required Result event(GetCommentsEvent value),
    @required Result error(GetCommentsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetComments$ value), {
    Result successful(GetCommentsSuccessful value),
    Result event(GetCommentsEvent value),
    Result error(GetCommentsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetCommentsCopyWith<$Res> {
  factory $GetCommentsCopyWith(
          GetComments value, $Res Function(GetComments) then) =
      _$GetCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCommentsCopyWithImpl<$Res> implements $GetCommentsCopyWith<$Res> {
  _$GetCommentsCopyWithImpl(this._value, this._then);

  final GetComments _value;
  // ignore: unused_field
  final $Res Function(GetComments) _then;
}

/// @nodoc
abstract class $GetComments$CopyWith<$Res> {
  factory $GetComments$CopyWith(
          GetComments$ value, $Res Function(GetComments$) then) =
      _$GetComments$CopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$GetComments$CopyWithImpl<$Res> extends _$GetCommentsCopyWithImpl<$Res>
    implements $GetComments$CopyWith<$Res> {
  _$GetComments$CopyWithImpl(
      GetComments$ _value, $Res Function(GetComments$) _then)
      : super(_value, (v) => _then(v as GetComments$));

  @override
  GetComments$ get _value => super._value as GetComments$;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(GetComments$(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$GetComments$ implements GetComments$ {
  const _$GetComments$(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'GetComments(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetComments$ &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  $GetComments$CopyWith<GetComments$> get copyWith =>
      _$GetComments$CopyWithImpl<GetComments$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId), {
    @required Result successful(List<Comment> comments),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return $default(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId), {
    Result successful(List<Comment> comments),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetComments$ value), {
    @required Result successful(GetCommentsSuccessful value),
    @required Result event(GetCommentsEvent value),
    @required Result error(GetCommentsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetComments$ value), {
    Result successful(GetCommentsSuccessful value),
    Result event(GetCommentsEvent value),
    Result error(GetCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetComments$ implements GetComments {
  const factory GetComments$(String postId) = _$GetComments$;

  String get postId;
  $GetComments$CopyWith<GetComments$> get copyWith;
}

/// @nodoc
abstract class $GetCommentsSuccessfulCopyWith<$Res> {
  factory $GetCommentsSuccessfulCopyWith(GetCommentsSuccessful value,
          $Res Function(GetCommentsSuccessful) then) =
      _$GetCommentsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$GetCommentsSuccessfulCopyWithImpl<$Res>
    extends _$GetCommentsCopyWithImpl<$Res>
    implements $GetCommentsSuccessfulCopyWith<$Res> {
  _$GetCommentsSuccessfulCopyWithImpl(
      GetCommentsSuccessful _value, $Res Function(GetCommentsSuccessful) _then)
      : super(_value, (v) => _then(v as GetCommentsSuccessful));

  @override
  GetCommentsSuccessful get _value => super._value as GetCommentsSuccessful;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(GetCommentsSuccessful(
      comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
class _$GetCommentsSuccessful implements GetCommentsSuccessful {
  const _$GetCommentsSuccessful(this.comments) : assert(comments != null);

  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'GetComments.successful(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCommentsSuccessful &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  $GetCommentsSuccessfulCopyWith<GetCommentsSuccessful> get copyWith =>
      _$GetCommentsSuccessfulCopyWithImpl<GetCommentsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId), {
    @required Result successful(List<Comment> comments),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return successful(comments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId), {
    Result successful(List<Comment> comments),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetComments$ value), {
    @required Result successful(GetCommentsSuccessful value),
    @required Result event(GetCommentsEvent value),
    @required Result error(GetCommentsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetComments$ value), {
    Result successful(GetCommentsSuccessful value),
    Result event(GetCommentsEvent value),
    Result error(GetCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCommentsSuccessful implements GetComments {
  const factory GetCommentsSuccessful(List<Comment> comments) =
      _$GetCommentsSuccessful;

  List<Comment> get comments;
  $GetCommentsSuccessfulCopyWith<GetCommentsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetCommentsEventCopyWith<$Res> {
  factory $GetCommentsEventCopyWith(
          GetCommentsEvent value, $Res Function(GetCommentsEvent) then) =
      _$GetCommentsEventCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$GetCommentsEventCopyWithImpl<$Res>
    extends _$GetCommentsCopyWithImpl<$Res>
    implements $GetCommentsEventCopyWith<$Res> {
  _$GetCommentsEventCopyWithImpl(
      GetCommentsEvent _value, $Res Function(GetCommentsEvent) _then)
      : super(_value, (v) => _then(v as GetCommentsEvent));

  @override
  GetCommentsEvent get _value => super._value as GetCommentsEvent;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(GetCommentsEvent(
      comments == freezed ? _value.comments : comments as List<Comment>,
    ));
  }
}

/// @nodoc
class _$GetCommentsEvent implements GetCommentsEvent {
  const _$GetCommentsEvent(this.comments) : assert(comments != null);

  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'GetComments.event(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCommentsEvent &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  $GetCommentsEventCopyWith<GetCommentsEvent> get copyWith =>
      _$GetCommentsEventCopyWithImpl<GetCommentsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId), {
    @required Result successful(List<Comment> comments),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return event(comments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId), {
    Result successful(List<Comment> comments),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetComments$ value), {
    @required Result successful(GetCommentsSuccessful value),
    @required Result event(GetCommentsEvent value),
    @required Result error(GetCommentsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return event(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetComments$ value), {
    Result successful(GetCommentsSuccessful value),
    Result event(GetCommentsEvent value),
    Result error(GetCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class GetCommentsEvent implements GetComments {
  const factory GetCommentsEvent(List<Comment> comments) = _$GetCommentsEvent;

  List<Comment> get comments;
  $GetCommentsEventCopyWith<GetCommentsEvent> get copyWith;
}

/// @nodoc
abstract class $GetCommentsErrorCopyWith<$Res> {
  factory $GetCommentsErrorCopyWith(
          GetCommentsError value, $Res Function(GetCommentsError) then) =
      _$GetCommentsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetCommentsErrorCopyWithImpl<$Res>
    extends _$GetCommentsCopyWithImpl<$Res>
    implements $GetCommentsErrorCopyWith<$Res> {
  _$GetCommentsErrorCopyWithImpl(
      GetCommentsError _value, $Res Function(GetCommentsError) _then)
      : super(_value, (v) => _then(v as GetCommentsError));

  @override
  GetCommentsError get _value => super._value as GetCommentsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetCommentsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetCommentsError implements GetCommentsError {
  const _$GetCommentsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetComments.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCommentsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetCommentsErrorCopyWith<GetCommentsError> get copyWith =>
      _$GetCommentsErrorCopyWithImpl<GetCommentsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId), {
    @required Result successful(List<Comment> comments),
    @required Result event(List<Comment> comments),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId), {
    Result successful(List<Comment> comments),
    Result event(List<Comment> comments),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetComments$ value), {
    @required Result successful(GetCommentsSuccessful value),
    @required Result event(GetCommentsEvent value),
    @required Result error(GetCommentsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(event != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetComments$ value), {
    Result successful(GetCommentsSuccessful value),
    Result event(GetCommentsEvent value),
    Result error(GetCommentsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCommentsError implements GetComments, ErrorAction {
  const factory GetCommentsError(Object error) = _$GetCommentsError;

  Object get error;
  $GetCommentsErrorCopyWith<GetCommentsError> get copyWith;
}

/// @nodoc
class _$PostCommentTearOff {
  const _$PostCommentTearOff();

// ignore: unused_element
  PostComment$ call(
      {@required String postId, @required String text, @required String uid}) {
    return PostComment$(
      postId: postId,
      text: text,
      uid: uid,
    );
  }

// ignore: unused_element
  PostCommentSuccessful successful() {
    return const PostCommentSuccessful();
  }

// ignore: unused_element
  PostCommentError error(Object error) {
    return PostCommentError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostComment = _$PostCommentTearOff();

/// @nodoc
mixin _$PostComment {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(PostComment$ value), {
    @required Result successful(PostCommentSuccessful value),
    @required Result error(PostCommentError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(PostComment$ value), {
    Result successful(PostCommentSuccessful value),
    Result error(PostCommentError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostCommentCopyWith<$Res> {
  factory $PostCommentCopyWith(
          PostComment value, $Res Function(PostComment) then) =
      _$PostCommentCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostCommentCopyWithImpl<$Res> implements $PostCommentCopyWith<$Res> {
  _$PostCommentCopyWithImpl(this._value, this._then);

  final PostComment _value;
  // ignore: unused_field
  final $Res Function(PostComment) _then;
}

/// @nodoc
abstract class $PostComment$CopyWith<$Res> {
  factory $PostComment$CopyWith(
          PostComment$ value, $Res Function(PostComment$) then) =
      _$PostComment$CopyWithImpl<$Res>;
  $Res call({String postId, String text, String uid});
}

/// @nodoc
class _$PostComment$CopyWithImpl<$Res> extends _$PostCommentCopyWithImpl<$Res>
    implements $PostComment$CopyWith<$Res> {
  _$PostComment$CopyWithImpl(
      PostComment$ _value, $Res Function(PostComment$) _then)
      : super(_value, (v) => _then(v as PostComment$));

  @override
  PostComment$ get _value => super._value as PostComment$;

  @override
  $Res call({
    Object postId = freezed,
    Object text = freezed,
    Object uid = freezed,
  }) {
    return _then(PostComment$(
      postId: postId == freezed ? _value.postId : postId as String,
      text: text == freezed ? _value.text : text as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$PostComment$ implements PostComment$ {
  const _$PostComment$(
      {@required this.postId, @required this.text, @required this.uid})
      : assert(postId != null),
        assert(text != null),
        assert(uid != null);

  @override
  final String postId;
  @override
  final String text;
  @override
  final String uid;

  @override
  String toString() {
    return 'PostComment(postId: $postId, text: $text, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostComment$ &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(uid);

  @override
  $PostComment$CopyWith<PostComment$> get copyWith =>
      _$PostComment$CopyWithImpl<PostComment$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(postId, text, uid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(postId, text, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(PostComment$ value), {
    @required Result successful(PostCommentSuccessful value),
    @required Result error(PostCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(PostComment$ value), {
    Result successful(PostCommentSuccessful value),
    Result error(PostCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PostComment$ implements PostComment {
  const factory PostComment$(
      {@required String postId,
      @required String text,
      @required String uid}) = _$PostComment$;

  String get postId;
  String get text;
  String get uid;
  $PostComment$CopyWith<PostComment$> get copyWith;
}

/// @nodoc
abstract class $PostCommentSuccessfulCopyWith<$Res> {
  factory $PostCommentSuccessfulCopyWith(PostCommentSuccessful value,
          $Res Function(PostCommentSuccessful) then) =
      _$PostCommentSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostCommentSuccessfulCopyWithImpl<$Res>
    extends _$PostCommentCopyWithImpl<$Res>
    implements $PostCommentSuccessfulCopyWith<$Res> {
  _$PostCommentSuccessfulCopyWithImpl(
      PostCommentSuccessful _value, $Res Function(PostCommentSuccessful) _then)
      : super(_value, (v) => _then(v as PostCommentSuccessful));

  @override
  PostCommentSuccessful get _value => super._value as PostCommentSuccessful;
}

/// @nodoc
class _$PostCommentSuccessful implements PostCommentSuccessful {
  const _$PostCommentSuccessful();

  @override
  String toString() {
    return 'PostComment.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PostCommentSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(PostComment$ value), {
    @required Result successful(PostCommentSuccessful value),
    @required Result error(PostCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(PostComment$ value), {
    Result successful(PostCommentSuccessful value),
    Result error(PostCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class PostCommentSuccessful implements PostComment {
  const factory PostCommentSuccessful() = _$PostCommentSuccessful;
}

/// @nodoc
abstract class $PostCommentErrorCopyWith<$Res> {
  factory $PostCommentErrorCopyWith(
          PostCommentError value, $Res Function(PostCommentError) then) =
      _$PostCommentErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$PostCommentErrorCopyWithImpl<$Res>
    extends _$PostCommentCopyWithImpl<$Res>
    implements $PostCommentErrorCopyWith<$Res> {
  _$PostCommentErrorCopyWithImpl(
      PostCommentError _value, $Res Function(PostCommentError) _then)
      : super(_value, (v) => _then(v as PostCommentError));

  @override
  PostCommentError get _value => super._value as PostCommentError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(PostCommentError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$PostCommentError implements PostCommentError {
  const _$PostCommentError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'PostComment.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostCommentError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $PostCommentErrorCopyWith<PostCommentError> get copyWith =>
      _$PostCommentErrorCopyWithImpl<PostCommentError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String postId, String text, String uid), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(PostComment$ value), {
    @required Result successful(PostCommentSuccessful value),
    @required Result error(PostCommentError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(PostComment$ value), {
    Result successful(PostCommentSuccessful value),
    Result error(PostCommentError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostCommentError implements PostComment, ErrorAction {
  const factory PostCommentError(Object error) = _$PostCommentError;

  Object get error;
  $PostCommentErrorCopyWith<PostCommentError> get copyWith;
}

/// @nodoc
class _$GetUserPostsTearOff {
  const _$GetUserPostsTearOff();

// ignore: unused_element
  GetUserPosts$ call(String uid) {
    return GetUserPosts$(
      uid,
    );
  }

// ignore: unused_element
  GetUserPostsSuccessful successful(List<Post> posts) {
    return GetUserPostsSuccessful(
      posts,
    );
  }

// ignore: unused_element
  GetUserPostsError error(Object error) {
    return GetUserPostsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetUserPosts = _$GetUserPostsTearOff();

/// @nodoc
mixin _$GetUserPosts {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    @required Result successful(GetUserPostsSuccessful value),
    @required Result error(GetUserPostsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    Result successful(GetUserPostsSuccessful value),
    Result error(GetUserPostsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetUserPostsCopyWith<$Res> {
  factory $GetUserPostsCopyWith(
          GetUserPosts value, $Res Function(GetUserPosts) then) =
      _$GetUserPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserPostsCopyWithImpl<$Res> implements $GetUserPostsCopyWith<$Res> {
  _$GetUserPostsCopyWithImpl(this._value, this._then);

  final GetUserPosts _value;
  // ignore: unused_field
  final $Res Function(GetUserPosts) _then;
}

/// @nodoc
abstract class $GetUserPosts$CopyWith<$Res> {
  factory $GetUserPosts$CopyWith(
          GetUserPosts$ value, $Res Function(GetUserPosts$) then) =
      _$GetUserPosts$CopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetUserPosts$CopyWithImpl<$Res> extends _$GetUserPostsCopyWithImpl<$Res>
    implements $GetUserPosts$CopyWith<$Res> {
  _$GetUserPosts$CopyWithImpl(
      GetUserPosts$ _value, $Res Function(GetUserPosts$) _then)
      : super(_value, (v) => _then(v as GetUserPosts$));

  @override
  GetUserPosts$ get _value => super._value as GetUserPosts$;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(GetUserPosts$(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$GetUserPosts$ implements GetUserPosts$ {
  const _$GetUserPosts$(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetUserPosts(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserPosts$ &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $GetUserPosts$CopyWith<GetUserPosts$> get copyWith =>
      _$GetUserPosts$CopyWithImpl<GetUserPosts$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    @required Result successful(GetUserPostsSuccessful value),
    @required Result error(GetUserPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    Result successful(GetUserPostsSuccessful value),
    Result error(GetUserPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUserPosts$ implements GetUserPosts {
  const factory GetUserPosts$(String uid) = _$GetUserPosts$;

  String get uid;
  $GetUserPosts$CopyWith<GetUserPosts$> get copyWith;
}

/// @nodoc
abstract class $GetUserPostsSuccessfulCopyWith<$Res> {
  factory $GetUserPostsSuccessfulCopyWith(GetUserPostsSuccessful value,
          $Res Function(GetUserPostsSuccessful) then) =
      _$GetUserPostsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class _$GetUserPostsSuccessfulCopyWithImpl<$Res>
    extends _$GetUserPostsCopyWithImpl<$Res>
    implements $GetUserPostsSuccessfulCopyWith<$Res> {
  _$GetUserPostsSuccessfulCopyWithImpl(GetUserPostsSuccessful _value,
      $Res Function(GetUserPostsSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserPostsSuccessful));

  @override
  GetUserPostsSuccessful get _value => super._value as GetUserPostsSuccessful;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(GetUserPostsSuccessful(
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

/// @nodoc
class _$GetUserPostsSuccessful implements GetUserPostsSuccessful {
  const _$GetUserPostsSuccessful(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'GetUserPosts.successful(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserPostsSuccessful &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $GetUserPostsSuccessfulCopyWith<GetUserPostsSuccessful> get copyWith =>
      _$GetUserPostsSuccessfulCopyWithImpl<GetUserPostsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    @required Result successful(GetUserPostsSuccessful value),
    @required Result error(GetUserPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    Result successful(GetUserPostsSuccessful value),
    Result error(GetUserPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserPostsSuccessful implements GetUserPosts {
  const factory GetUserPostsSuccessful(List<Post> posts) =
      _$GetUserPostsSuccessful;

  List<Post> get posts;
  $GetUserPostsSuccessfulCopyWith<GetUserPostsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetUserPostsErrorCopyWith<$Res> {
  factory $GetUserPostsErrorCopyWith(
          GetUserPostsError value, $Res Function(GetUserPostsError) then) =
      _$GetUserPostsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetUserPostsErrorCopyWithImpl<$Res>
    extends _$GetUserPostsCopyWithImpl<$Res>
    implements $GetUserPostsErrorCopyWith<$Res> {
  _$GetUserPostsErrorCopyWithImpl(
      GetUserPostsError _value, $Res Function(GetUserPostsError) _then)
      : super(_value, (v) => _then(v as GetUserPostsError));

  @override
  GetUserPostsError get _value => super._value as GetUserPostsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetUserPostsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetUserPostsError implements GetUserPostsError {
  const _$GetUserPostsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetUserPosts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserPostsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetUserPostsErrorCopyWith<GetUserPostsError> get copyWith =>
      _$GetUserPostsErrorCopyWithImpl<GetUserPostsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    @required Result successful(GetUserPostsSuccessful value),
    @required Result error(GetUserPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUserPosts$ value), {
    Result successful(GetUserPostsSuccessful value),
    Result error(GetUserPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserPostsError implements GetUserPosts, ErrorAction {
  const factory GetUserPostsError(Object error) = _$GetUserPostsError;

  Object get error;
  $GetUserPostsErrorCopyWith<GetUserPostsError> get copyWith;
}

/// @nodoc
class _$GetTaggedPostsTearOff {
  const _$GetTaggedPostsTearOff();

// ignore: unused_element
  GetTaggedPosts$ call(String uid) {
    return GetTaggedPosts$(
      uid,
    );
  }

// ignore: unused_element
  GetTaggedPostsSuccessful successful(List<Post> posts) {
    return GetTaggedPostsSuccessful(
      posts,
    );
  }

// ignore: unused_element
  GetTaggedPostsError error(Object error) {
    return GetTaggedPostsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetTaggedPosts = _$GetTaggedPostsTearOff();

/// @nodoc
mixin _$GetTaggedPosts {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    @required Result successful(GetTaggedPostsSuccessful value),
    @required Result error(GetTaggedPostsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    Result successful(GetTaggedPostsSuccessful value),
    Result error(GetTaggedPostsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetTaggedPostsCopyWith<$Res> {
  factory $GetTaggedPostsCopyWith(
          GetTaggedPosts value, $Res Function(GetTaggedPosts) then) =
      _$GetTaggedPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetTaggedPostsCopyWithImpl<$Res>
    implements $GetTaggedPostsCopyWith<$Res> {
  _$GetTaggedPostsCopyWithImpl(this._value, this._then);

  final GetTaggedPosts _value;
  // ignore: unused_field
  final $Res Function(GetTaggedPosts) _then;
}

/// @nodoc
abstract class $GetTaggedPosts$CopyWith<$Res> {
  factory $GetTaggedPosts$CopyWith(
          GetTaggedPosts$ value, $Res Function(GetTaggedPosts$) then) =
      _$GetTaggedPosts$CopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetTaggedPosts$CopyWithImpl<$Res>
    extends _$GetTaggedPostsCopyWithImpl<$Res>
    implements $GetTaggedPosts$CopyWith<$Res> {
  _$GetTaggedPosts$CopyWithImpl(
      GetTaggedPosts$ _value, $Res Function(GetTaggedPosts$) _then)
      : super(_value, (v) => _then(v as GetTaggedPosts$));

  @override
  GetTaggedPosts$ get _value => super._value as GetTaggedPosts$;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(GetTaggedPosts$(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$GetTaggedPosts$ implements GetTaggedPosts$ {
  const _$GetTaggedPosts$(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetTaggedPosts(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTaggedPosts$ &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $GetTaggedPosts$CopyWith<GetTaggedPosts$> get copyWith =>
      _$GetTaggedPosts$CopyWithImpl<GetTaggedPosts$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    @required Result successful(GetTaggedPostsSuccessful value),
    @required Result error(GetTaggedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    Result successful(GetTaggedPostsSuccessful value),
    Result error(GetTaggedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetTaggedPosts$ implements GetTaggedPosts {
  const factory GetTaggedPosts$(String uid) = _$GetTaggedPosts$;

  String get uid;
  $GetTaggedPosts$CopyWith<GetTaggedPosts$> get copyWith;
}

/// @nodoc
abstract class $GetTaggedPostsSuccessfulCopyWith<$Res> {
  factory $GetTaggedPostsSuccessfulCopyWith(GetTaggedPostsSuccessful value,
          $Res Function(GetTaggedPostsSuccessful) then) =
      _$GetTaggedPostsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class _$GetTaggedPostsSuccessfulCopyWithImpl<$Res>
    extends _$GetTaggedPostsCopyWithImpl<$Res>
    implements $GetTaggedPostsSuccessfulCopyWith<$Res> {
  _$GetTaggedPostsSuccessfulCopyWithImpl(GetTaggedPostsSuccessful _value,
      $Res Function(GetTaggedPostsSuccessful) _then)
      : super(_value, (v) => _then(v as GetTaggedPostsSuccessful));

  @override
  GetTaggedPostsSuccessful get _value =>
      super._value as GetTaggedPostsSuccessful;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(GetTaggedPostsSuccessful(
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

/// @nodoc
class _$GetTaggedPostsSuccessful implements GetTaggedPostsSuccessful {
  const _$GetTaggedPostsSuccessful(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'GetTaggedPosts.successful(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTaggedPostsSuccessful &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $GetTaggedPostsSuccessfulCopyWith<GetTaggedPostsSuccessful> get copyWith =>
      _$GetTaggedPostsSuccessfulCopyWithImpl<GetTaggedPostsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    @required Result successful(GetTaggedPostsSuccessful value),
    @required Result error(GetTaggedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    Result successful(GetTaggedPostsSuccessful value),
    Result error(GetTaggedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetTaggedPostsSuccessful implements GetTaggedPosts {
  const factory GetTaggedPostsSuccessful(List<Post> posts) =
      _$GetTaggedPostsSuccessful;

  List<Post> get posts;
  $GetTaggedPostsSuccessfulCopyWith<GetTaggedPostsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetTaggedPostsErrorCopyWith<$Res> {
  factory $GetTaggedPostsErrorCopyWith(
          GetTaggedPostsError value, $Res Function(GetTaggedPostsError) then) =
      _$GetTaggedPostsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetTaggedPostsErrorCopyWithImpl<$Res>
    extends _$GetTaggedPostsCopyWithImpl<$Res>
    implements $GetTaggedPostsErrorCopyWith<$Res> {
  _$GetTaggedPostsErrorCopyWithImpl(
      GetTaggedPostsError _value, $Res Function(GetTaggedPostsError) _then)
      : super(_value, (v) => _then(v as GetTaggedPostsError));

  @override
  GetTaggedPostsError get _value => super._value as GetTaggedPostsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetTaggedPostsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetTaggedPostsError implements GetTaggedPostsError {
  const _$GetTaggedPostsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetTaggedPosts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTaggedPostsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetTaggedPostsErrorCopyWith<GetTaggedPostsError> get copyWith =>
      _$GetTaggedPostsErrorCopyWithImpl<GetTaggedPostsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    @required Result successful(GetTaggedPostsSuccessful value),
    @required Result error(GetTaggedPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetTaggedPosts$ value), {
    Result successful(GetTaggedPostsSuccessful value),
    Result error(GetTaggedPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetTaggedPostsError implements GetTaggedPosts, ErrorAction {
  const factory GetTaggedPostsError(Object error) = _$GetTaggedPostsError;

  Object get error;
  $GetTaggedPostsErrorCopyWith<GetTaggedPostsError> get copyWith;
}
