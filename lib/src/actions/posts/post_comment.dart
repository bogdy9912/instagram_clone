part of posts_actions;

@freezed
abstract class PostComment with _$PostComment implements AppAction {
  const factory PostComment({@required String postId,@required String text, @required String uid}) = PostComment$;

  const factory PostComment.successful() = PostCommentSuccessful;

  @Implements(ErrorAction)
  const factory PostComment.error(Object error) = PostCommentError;
}
