part of posts_actions;

@freezed
abstract class GetTaggedPosts with _$GetTaggedPosts implements AppAction {
  const factory GetTaggedPosts(String uid) = GetTaggedPosts$;

  const factory GetTaggedPosts.successful(List<Post> posts) = GetTaggedPostsSuccessful;

  @Implements(ErrorAction)
  const factory GetTaggedPosts.error(Object error) = GetTaggedPostsError;
}
