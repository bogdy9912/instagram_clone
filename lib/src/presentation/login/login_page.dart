import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/mixin/dialog_mixin.dart';
import 'package:instagram_clone/src/presentation/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginError) {
      showErrorDialog(context, 'Login error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _email,
              validator: (String value) {
                if (!value.contains('@') || value.isEmpty || !value.contains('.')) {
                  return 'Please introduce a valid email';
                }
                return null;
              },
              onSaved: (String value) {
//              StoreProvider.of<AppState>(context).dispatch(Login(email: _email.text, password: _password.text));
              },
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _password,
              validator: (String value) {
                if (value.length < 6 || value.isEmpty) {
                  return 'Please introduce a valid password';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const Spacer(),
            FlatButton(
              onPressed: () {
                StoreProvider.of<AppState>(context)
                    .dispatch(Login(email: _email.text, password: _password.text, response: _response));
              },
              child: const Text('Login'),
            ),
            const Divider(),
            Text.rich(
              TextSpan(
                text: 'You don\'t have an account? ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign Up!',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, AppRoutes.signUp);
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
