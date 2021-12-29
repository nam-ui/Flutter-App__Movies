import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

import 'config_app.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'screen/components/nav_bar/navigation_bottom.dart';
import 'utils/wire_dash/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppPages.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final title = "Flutter Movie";
  late Locale _locale;

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      secret: Constants.secr,
      projectId: Constants.proj,
      navigatorKey: Constants.navigatorKey,
      child: MaterialApp(
        navigatorKey: Constants.navigatorKey,
        theme: ThemeData(fontFamily: 'notoSerif'),
        title: title,
        onGenerateRoute: AppPages.router.generator,
        initialRoute: AppRoutes.HOME,
        supportedLocales: supportedLocales,
        locale: _locale,
        debugShowCheckedModeBanner: false,
        home: NavigationBottom(),
      ),
    ); // Wiredash Home
  }
}
