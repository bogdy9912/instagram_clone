part of posts_actions;

@freezed
abstract class LikePost with _$LikePost implements AppAction {
  const factory LikePost({String id, String add, String remove}) = LikePost$;

  const factory LikePost.successful({String id, String add, String remove}) = LikePostSuccessful;

  @Implements(ErrorAction)
  const factory LikePost.error(Object error) = LikePostError;
}
