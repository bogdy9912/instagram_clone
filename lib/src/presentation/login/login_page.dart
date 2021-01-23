import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';
import 'package:instagram_clone/src/presentation/mixin/dialog_mixin.dart';

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
        child: Form(
          child: Builder(
            builder: (BuildContext context) {
              return Column(
                children: <Widget>[
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(hintText: 'email'),
                    validator: (String value) {
                      if (!value.contains('@') || value.isEmpty || !value.contains('.')) {
                        return 'Please introduce a valid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(hintText: 'password'),
                    validator: (String value) {
                      if (value.length < 6 || value.isEmpty) {
                        return 'Please introduce a valid password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  Row(
                    children: <Widget>[
                      const Spacer(),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.resetPassword);
                        },
                        child: const Text('Forgot Password?'),
                      ),
                    ],
                  ),
                  const Spacer(),
                  FlatButton(
                    onPressed: () {
                      final bool valid = Form.of(context).validate();

                      if (valid) {
                        StoreProvider.of<AppState>(context)
                            .dispatch(Login(email: _email.text, password: _password.text, response: _response));
                      }
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
              );
            },
          ),
        ),
      ),
    );
  }
}
