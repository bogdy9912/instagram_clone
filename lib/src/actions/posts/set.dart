part of posts_actions;

@freezed
abstract class UpdatePostInfo with _$UpdatePostInfo implements AppAction {
  const factory UpdatePostInfo({
    String addImage,
    String removeImage,
    double lat,
    double lng,
    String description,
    AppUser addUser,
    AppUser removeUser,
  }) = UpdatePostInfo$;
}
