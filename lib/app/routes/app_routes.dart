import 'package:pills_tracker/view/dashboard_view.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/dashboard';
  static getApplicationRoute() {
    return {dashboardRoute: (context) => const DashboardView()
    };
  }
}
