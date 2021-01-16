import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/presentation/sign_up/password_page.dart';
import 'package:instagram_clone/src/presentation/sign_up/sign_up_page.dart';
import 'package:instagram_clone/src/presentation/sign_up/username_page.dart';

import 'home.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String username = '/username';
  static const String password = '/password';
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    username: (BuildContext context) => const UsernamePage(),
    password: (BuildContext context) => const PasswordPage(),
  };
}
