import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> _routes = {};

  static void register(Map<String, Widget Function(BuildContext)> routing) {
    _routes.addAll(routing);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (_routes.containsKey(settings.name)) {
      return MaterialPageRoute(builder: (_) => _routes[settings.name](_));
    } else {
      throw new ErrorDescription(
          'No key in router matches current navigation name');
    }
  }
}

void registerFeature(Map<String, Widget Function(BuildContext)> routing) {
  return AppRouter.register(routing);
}
