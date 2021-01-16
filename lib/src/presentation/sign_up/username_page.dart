import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/routes.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('SignUp'),),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Builder(
          builder: (BuildContext context) {
            return Column(children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'username',
              ),
              onSaved: (String value) {
                StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(username: value.trim()));
              },
              validator: (String value) {
                if (value.length<6) {
                  return 'Please introduce a longer username';
                }
                return null;
              },
            ),const Spacer(),
            FlatButton(
              onPressed: () {
                final bool valid = Form.of(context).validate();
                if (valid){
                  Form.of(context).save();
                  Navigator.pushNamed(context, AppRoutes.password);
                }
              },
              child: const Text('Continue'),
            ),
          ],);
          },
        ),
      ),
    ),
    );
  }
}
