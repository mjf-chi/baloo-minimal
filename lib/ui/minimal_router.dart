import 'package:flutter/material.dart';

import 'package:baloo/ui/constants/routes.dart';

import 'package:baloo/ui/views/welcome.dart';
import 'package:baloo/ui/screens/does_not_exist_screen.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Welcome:
        return MaterialPageRoute(builder: (_) => Welcome());
      default:
        return MaterialPageRoute(builder: (_) => DoesNotExistScreen());
    }
  }
}
