part of posts_actions;

@freezed
abstract class UpdateLikePost with _$UpdateLikePost implements AppAction {
  const factory UpdateLikePost({String id, String add, String remove}) = UpdateLikePost$;

  const factory UpdateLikePost.successful({String id, String add, String remove}) = UpdateLikePostSuccessful;

  @Implements(ErrorAction)
  const factory UpdateLikePost.error(Object error) = UpdateLikePostError;
}
