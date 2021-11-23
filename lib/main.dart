// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:invoice_app/pages/bill/bill_page.dart';
import 'package:invoice_app/pages/dashboard/dashboard_page.dart';
import 'package:invoice_app/pages/estimate/estimate_page.dart';
import 'package:invoice_app/pages/home/home_page.dart';
import 'package:invoice_app/pages/invoice/invoice_page.dart';
import 'package:invoice_app/pages/login/login_page.dart';
import 'package:invoice_app/pages/register/register_page.dart';
import 'widgets/app_route_observer.dart';
import 'constants/route_names.dart';

void main() async {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invoice App',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          // makes all platforms that can run Flutter apps display routes without any animation
          // ignore: prefer_for_elements_to_map_f romiterable, prefer_for_elements_to_map_fromiterable
          builders: Map<TargetPlatform,
                  _InanimatePageTransitionsBuilder>.fromIterable(
              TargetPlatform.values.toList(),
              key: (dynamic k) => k,
              value: (dynamic _) => const _InanimatePageTransitionsBuilder()),
        ),
      ),
      initialRoute: RouteNames.home,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RouteNames.dashboard: (_) => const DashboardPage(),
        RouteNames.home: (_) => const HomePage(),
        RouteNames.login: (_) => const LoginPage(),
        RouteNames.register: (_) => const RegisterPage(),
        RouteNames.bill: (_) => const BillPage(),
        RouteNames.invoice: (_) => const InvoicePage(),
        RouteNames.estimate: (_) => const EstimatePage(),
      },
    );
  }
}

/// This class is used to build page transitions that don't have any animation
class _InanimatePageTransitionsBuilder extends PageTransitionsBuilder {
  const _InanimatePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}
