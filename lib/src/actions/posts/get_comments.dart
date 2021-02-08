part of posts_actions;

@freezed
abstract class GetComments with _$GetComments implements AppAction {
  const factory GetComments(String postId) = GetComments$;

  const factory GetComments.successful(Map<String, Comment>  comments) = GetCommentsSuccessful;

  const factory GetComments.event() = GetCommentsEvent;

  @Implements(ErrorAction)
  const factory GetComments.error(Object error) = GetCommentsError;
}
