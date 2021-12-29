import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../screen/accounts/Accounts.dart';
import 'app_routes.dart';

class AppPages {
  static FluroRouter router = FluroRouter();

  // ignore: prefer_final_fields
  static Handler _home = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          MyApp());

  // ignore: prefer_final_fields
  static Handler _account = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          MyApp());

  // ignore: prefer_final_fields
  static final Handler _movieDetail = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          Account());

  static void setupRouter() {
    router.define(AppRoutes.HOME, handler: _home);
    router.define(AppRoutes.MOVIE, handler: _movieDetail);
    router.define(AppRoutes.ACCOUNT, handler: _account);
  }
}
