part of auth_containers;

class RegistrationInfoContainer extends StatelessWidget {
  const RegistrationInfoContainer({@required this.builder});

  final ViewModelBuilder<RegistrationInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegistrationInfo>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.auth.info;
      },
    );
  }
}
