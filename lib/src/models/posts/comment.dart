part of posts_models;

abstract class Comment implements Built<Comment, CommentBuilder> {
  factory Comment([void Function(CommentBuilder b) updates]) = _$Comment;
  factory Comment.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Comment._();

  String get id;

  String get text;

  String get userId;

  BuiltList<String> get likes;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Comment> get serializer => _$commentSerializer;
}