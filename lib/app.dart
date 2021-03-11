import 'package:flutter/material.dart';

import 'features/auth/auth_router.dart';
import 'ui/theme/theme.dart';
import 'app_router.dart';

class FlutterRxStarterApp extends StatelessWidget {
  FlutterRxStarterApp() {
    registerRouter(authRouter);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rx Starter',
      theme: appThemeData,
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
