import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Builder(
            builder: (BuildContext context ) {
              return Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'email',
                  ),
                  onSaved: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(email: value.trim()));
                  },
                  validator: (String value) {
                    if (!value.contains('@') || !value.contains('.')) {
                      return 'Please introduce a valid email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const Spacer(),
                FlatButton(
                  onPressed: () {
                    final bool valid = Form.of(context).validate();
                    if (valid){
                      Form.of(context).save();
                    Navigator.pushNamed(context, AppRoutes.username);
                    }
                  },
                  child: const Text('Continue'),
                ),
                const Divider(),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login!',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                            }),
                    ],
                  ),
                )
              ],
            );
            },
          ),
        ),
      ),
    );
  }
}
