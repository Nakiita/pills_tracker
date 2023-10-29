import 'package:flutter/material.dart';
import 'package:pills_tracker/app/routes/app_routes.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pills Tracker',
      initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
