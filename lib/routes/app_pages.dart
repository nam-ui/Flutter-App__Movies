import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../screen/accounts/Accounts.dart';
import '../screen/details/MovieDetails.dart';
import 'app_routes.dart';

class AppPages {
  static FluroRouter router = FluroRouter();

  static Handler _home =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return MyApp();
  });

  static Handler _account =
      Handler(handlerFunc: (context, Map<String, dynamic> params) => Account());

  static final Handler _movieDetail = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => MovieDetails());

  static void setupRouter() {
    router.define(AppRoutes.HOME, handler: _home);
    router.define(AppRoutes.MOVIE, handler: _movieDetail);
    router.define(AppRoutes.ACCOUNT, handler: _account);
  }
}
