part of posts_models;

abstract class PostsInfo implements Built<PostsInfo, PostsInfoBuilder> {
  factory PostsInfo([void Function(PostsInfoBuilder b) updates]) = _$PostsInfo;

  factory PostsInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  PostsInfo._();

  BuiltList<String> get paths;

  @nullable
  String get lat;

  @nullable
  String get lng;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PostsInfo> get serializer => _$postsInfoSerializer;
}
