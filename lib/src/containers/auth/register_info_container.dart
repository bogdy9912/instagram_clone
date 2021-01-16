import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

class RegistrationInfoContainer extends StatelessWidget {

  const RegistrationInfoContainer({@required this.builder});

  final ViewModelBuilder<RegistrationInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegistrationInfo>(builder: builder, converter: (Store<AppState> store){
      return store.state.auth.info;
    });
  }
}
