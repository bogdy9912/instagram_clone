import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';

import '../routes.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key key}) : super(key: key);

  void _onResponse(BuildContext context, AppAction action) {
    if (action is SignUpSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is SignUpError) {
      //showError(context, 'Register error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Builder(
            builder: (BuildContext context) {
              return Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'password',
                    ),
                    onSaved: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(password: value));
                    },
                    validator: (String value) {
                      if (value.length < 6) {
                        return 'Please introduce a longer password';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const Spacer(),
                  FlatButton(
                    onPressed: () {
                      final bool valid = Form.of(context).validate();
                      if (valid) {
                        Form.of(context).save();
                        StoreProvider.of<AppState>(context).dispatch(
                          SignUp(
                            (AppAction action) {
                              _onResponse(context, action);
                            },
                          ),
                        );
                      }
                    },
                    child: const Text('Continue'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
