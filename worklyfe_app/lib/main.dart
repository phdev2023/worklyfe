import 'package:flutter/material.dart';

import 'core/routes/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Worklyfe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: MyAppRouter.router.routeInformationParser,
      routeInformationProvider: MyAppRouter.router.routeInformationProvider,
      routerDelegate: MyAppRouter.router.routerDelegate,
    );
  }
}
