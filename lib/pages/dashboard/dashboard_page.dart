// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice_app/pages/dashboard/widgets/dashboard_desktop.dart';
import 'package:invoice_app/pages/dashboard/widgets/dashboard_mobile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1115) {
              return DashboardDesktop();
            } else {
              return DashboardMobile();
            }
          },
        ));
  }
}
