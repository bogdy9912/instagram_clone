part of posts_actions;

@freezed
abstract class GetSavedPosts with _$GetSavedPosts implements AppAction {
  const factory GetSavedPosts() = GetSavedPosts$;

  const factory GetSavedPosts.successful(List<Post> posts) = GetSavedPostsSuccessful;

  @Implements(ErrorAction)
  const factory GetSavedPosts.error(Object error) = GetSavedPostsError;
}
