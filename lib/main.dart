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
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final title = "Flutter Movie";

  @override
  void initState() {
    super.initState();
    Constants.navigatorKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(
      builder: (context, snapshot) {
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
              debugShowCheckedModeBanner: false,
              home: NavigationBottom(),
            ));
      },
    ); // Wiredash Home
  }
}
