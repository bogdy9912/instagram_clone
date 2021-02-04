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
  GetFeedSuccessful successful(List<Post> posts) {
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
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Post> posts),
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
    @required Result successful(List<Post> posts),
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
    Result successful(List<Post> posts),
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
  $Res call({List<Post> posts});
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
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

/// @nodoc
class _$GetFeedSuccessful implements GetFeedSuccessful {
  const _$GetFeedSuccessful(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

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
    Result $default(), {
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
  const factory GetFeedSuccessful(List<Post> posts) = _$GetFeedSuccessful;

  List<Post> get posts;
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
    Result $default(), {
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
class _$LikePostTearOff {
  const _$LikePostTearOff();

// ignore: unused_element
  LikePost$ call({String id, String add, String remove}) {
    return LikePost$(
      id: id,
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  LikePostSuccessful successful({String id, String add, String remove}) {
    return LikePostSuccessful(
      id: id,
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  LikePostError error(Object error) {
    return LikePostError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LikePost = _$LikePostTearOff();

/// @nodoc
mixin _$LikePost {
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
    Result $default(LikePost$ value), {
    @required Result successful(LikePostSuccessful value),
    @required Result error(LikePostError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LikePost$ value), {
    Result successful(LikePostSuccessful value),
    Result error(LikePostError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LikePostCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) then) =
      _$LikePostCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikePostCopyWithImpl<$Res> implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(this._value, this._then);

  final LikePost _value;
  // ignore: unused_field
  final $Res Function(LikePost) _then;
}

/// @nodoc
abstract class $LikePost$CopyWith<$Res> {
  factory $LikePost$CopyWith(LikePost$ value, $Res Function(LikePost$) then) =
      _$LikePost$CopyWithImpl<$Res>;
  $Res call({String id, String add, String remove});
}

/// @nodoc
class _$LikePost$CopyWithImpl<$Res> extends _$LikePostCopyWithImpl<$Res>
    implements $LikePost$CopyWith<$Res> {
  _$LikePost$CopyWithImpl(LikePost$ _value, $Res Function(LikePost$) _then)
      : super(_value, (v) => _then(v as LikePost$));

  @override
  LikePost$ get _value => super._value as LikePost$;

  @override
  $Res call({
    Object id = freezed,
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(LikePost$(
      id: id == freezed ? _value.id : id as String,
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$LikePost$ implements LikePost$ {
  const _$LikePost$({this.id, this.add, this.remove});

  @override
  final String id;
  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'LikePost(id: $id, add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePost$ &&
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
  $LikePost$CopyWith<LikePost$> get copyWith =>
      _$LikePost$CopyWithImpl<LikePost$>(this, _$identity);

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
    Result $default(LikePost$ value), {
    @required Result successful(LikePostSuccessful value),
    @required Result error(LikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LikePost$ value), {
    Result successful(LikePostSuccessful value),
    Result error(LikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LikePost$ implements LikePost {
  const factory LikePost$({String id, String add, String remove}) = _$LikePost$;

  String get id;
  String get add;
  String get remove;
  $LikePost$CopyWith<LikePost$> get copyWith;
}

/// @nodoc
abstract class $LikePostSuccessfulCopyWith<$Res> {
  factory $LikePostSuccessfulCopyWith(
          LikePostSuccessful value, $Res Function(LikePostSuccessful) then) =
      _$LikePostSuccessfulCopyWithImpl<$Res>;
  $Res call({String id, String add, String remove});
}

/// @nodoc
class _$LikePostSuccessfulCopyWithImpl<$Res>
    extends _$LikePostCopyWithImpl<$Res>
    implements $LikePostSuccessfulCopyWith<$Res> {
  _$LikePostSuccessfulCopyWithImpl(
      LikePostSuccessful _value, $Res Function(LikePostSuccessful) _then)
      : super(_value, (v) => _then(v as LikePostSuccessful));

  @override
  LikePostSuccessful get _value => super._value as LikePostSuccessful;

  @override
  $Res call({
    Object id = freezed,
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(LikePostSuccessful(
      id: id == freezed ? _value.id : id as String,
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$LikePostSuccessful implements LikePostSuccessful {
  const _$LikePostSuccessful({this.id, this.add, this.remove});

  @override
  final String id;
  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'LikePost.successful(id: $id, add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePostSuccessful &&
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
  $LikePostSuccessfulCopyWith<LikePostSuccessful> get copyWith =>
      _$LikePostSuccessfulCopyWithImpl<LikePostSuccessful>(this, _$identity);

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
    Result $default(LikePost$ value), {
    @required Result successful(LikePostSuccessful value),
    @required Result error(LikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LikePost$ value), {
    Result successful(LikePostSuccessful value),
    Result error(LikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LikePostSuccessful implements LikePost {
  const factory LikePostSuccessful({String id, String add, String remove}) =
      _$LikePostSuccessful;

  String get id;
  String get add;
  String get remove;
  $LikePostSuccessfulCopyWith<LikePostSuccessful> get copyWith;
}

/// @nodoc
abstract class $LikePostErrorCopyWith<$Res> {
  factory $LikePostErrorCopyWith(
          LikePostError value, $Res Function(LikePostError) then) =
      _$LikePostErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LikePostErrorCopyWithImpl<$Res> extends _$LikePostCopyWithImpl<$Res>
    implements $LikePostErrorCopyWith<$Res> {
  _$LikePostErrorCopyWithImpl(
      LikePostError _value, $Res Function(LikePostError) _then)
      : super(_value, (v) => _then(v as LikePostError));

  @override
  LikePostError get _value => super._value as LikePostError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LikePostError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LikePostError implements LikePostError {
  const _$LikePostError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'LikePost.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePostError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LikePostErrorCopyWith<LikePostError> get copyWith =>
      _$LikePostErrorCopyWithImpl<LikePostError>(this, _$identity);

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
    Result $default(LikePost$ value), {
    @required Result successful(LikePostSuccessful value),
    @required Result error(LikePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(LikePost$ value), {
    Result successful(LikePostSuccessful value),
    Result error(LikePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LikePostError implements LikePost, ErrorAction {
  const factory LikePostError(Object error) = _$LikePostError;

  Object get error;
  $LikePostErrorCopyWith<LikePostError> get copyWith;
}
