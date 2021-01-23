part of posts_models;

abstract class Post implements Built<Post, PostBuilder> {
  factory Post([void Function(PostBuilder b) updates]) = _$Post;

  factory Post.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Post._();

  String get id;

  String get uid;

  @nullable
  String get description;

  @nullable
  double get lat;

  @nullable
  double get lng;

  BuiltList<String> get users;

  BuiltList<String> get images;

  BuiltList<String> get tags;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Post> get serializer => _$postSerializer;
}
