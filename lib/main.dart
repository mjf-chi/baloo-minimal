import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baloo/provider_setup.dart';
import 'package:baloo/ui/constants/routes.dart';
import 'package:baloo/ui/minimal_router.dart';


void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: MainApp(),
    ),
  );
}


class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'baloo',
      initialRoute: RoutePaths.Welcome,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
