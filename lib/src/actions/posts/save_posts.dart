part of posts_actions;

@freezed
abstract class UpdateSavedPosts with _$UpdateSavedPosts implements AppAction {
  const factory UpdateSavedPosts({String add, String remove}) = UpdateSavedPosts$;

  const factory UpdateSavedPosts.successful({String add, String remove}) = UpdateSavedPostsSuccessful;

  @Implements(ErrorAction)
  const factory UpdateSavedPosts.error(Object error) = UpdateSavedPostsError;
}
