import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_starter/app_state.dart';
import 'package:redux/redux.dart';

import 'features/auth/auth_router.dart';
import 'ui/theme/theme.dart';
import 'app_router.dart';

class FlutterRxStarterApp extends StatelessWidget {
  final store = Store<AppState>(null, initialState: AppState.initial());

  FlutterRxStarterApp() {
    registerRouter(authRouter);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          title: 'Flutter Rx Starter',
          theme: appThemeData,
          initialRoute: '/',
          onGenerateRoute: AppRouter.generateRoute,
        ));
  }
}
