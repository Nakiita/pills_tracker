import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pills_tracker/app/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Pills Tracker',
      // theme: ThemeData(
      //     colorSchemeSeed: const Color(0x00acf0c9), backgroundColor: Color(0x90DBD6),
      //     textTheme: GoogleFonts.plusJakartaSansTextTheme(
      //         Theme.of(context).textTheme)),
      initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
