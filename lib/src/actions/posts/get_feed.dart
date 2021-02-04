part of posts_actions;

@freezed
abstract class GetFeed with _$GetFeed implements AppAction {
  const factory GetFeed() = GetFeed$;

  const factory GetFeed.successful(Map<String, Post> posts) = GetFeedSuccessful;

  @Implements(ErrorAction)
  const factory GetFeed.error(Object error) = GetFeedError;
}
