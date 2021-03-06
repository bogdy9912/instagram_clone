import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:instagram_clone/src/presentation/feed/comments_page.dart';
import 'package:instagram_clone/src/presentation/feed/feed_page.dart';
import 'package:instagram_clone/src/presentation/login/reset_password_page.dart';
import 'package:instagram_clone/src/presentation/posts/choose_photos_post.dart';
import 'package:instagram_clone/src/presentation/posts/create_post_page.dart';
import 'package:instagram_clone/src/presentation/profile/post_owner_profile_page.dart';
import 'package:instagram_clone/src/presentation/profile/profile_page.dart';
import 'package:instagram_clone/src/presentation/profile/saved_posts_page.dart';
import 'package:instagram_clone/src/presentation/sign_up/password_page.dart';
import 'package:instagram_clone/src/presentation/sign_up/sign_up_page.dart';
import 'package:instagram_clone/src/presentation/sign_up/username_page.dart';
import 'package:instagram_clone/src/presentation/widgets/search_users_page.dart';

import 'home.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signUp = '/signUp';
  static const String username = '/username';
  static const String password = '/password';
  static const String resetPassword = '/resetPassword';
  static const String createPost = '/createPost';
  static const String choosePhotosPost = '/choosePhotosPost';
  static const String searchUsers = '/searchUsers';
  static const String feedPage = '/feedPage';
  static const String commentsPage = '/commentsPage';
  static const String profilePage = '/profilePage';
  static const String savedPosts = '/savedPosts';
  static const String postOwnerProfile = '/postOwnerProfile';
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    signUp: (BuildContext context) => const SignUpPage(),
    username: (BuildContext context) => const UsernamePage(),
    password: (BuildContext context) => const PasswordPage(),
    resetPassword: (BuildContext context) => const ResetPasswordPage(),
    createPost: (BuildContext context) => const CreatePostPage(),
    choosePhotosPost: (BuildContext context) => const ChoosePhotosPost(),
    searchUsers: (BuildContext context) => const SearchUsersPage(),
    feedPage: (BuildContext context) => const FeedPage(),
    commentsPage: (BuildContext context) {
      final Post arg = ModalRoute.of(context).settings.arguments;
      return CommentsPage(post: arg);
    },
    profilePage: (BuildContext context) => const ProfilePage(),
    savedPosts: (BuildContext context) => const SavedPostsPage(),
    postOwnerProfile: (BuildContext context) {
      final AppUser arg = ModalRoute.of(context).settings.arguments;
      return PostOwnerProfilePage(user: arg);
    },
  };
}
