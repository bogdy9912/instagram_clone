part of posts_actions;

@freezed
abstract class UpdateLikeComments with _$UpdateLikeComments implements AppAction {
  const factory UpdateLikeComments({
    @required String id,
    @required String postId,
    String add,
    String remove,
  }) = UpdateLikeComments$;

  const factory UpdateLikeComments.successful({
    @required String id,
    @required String postId,
    String add,
    String remove,
  }) = UpdateLikeCommentsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateLikeComments.error(Object error) = UpdateLikeCommentsError;
}
