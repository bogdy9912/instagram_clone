part of posts_actions;

@freezed
abstract class GetUserPosts with _$GetUserPosts implements AppAction {
  const factory GetUserPosts(String uid) = GetUserPosts$;

  const factory GetUserPosts.successful(List<Post> posts) = GetUserPostsSuccessful;

  @Implements(ErrorAction)
  const factory GetUserPosts.error(Object error) = GetUserPostsError;
}
