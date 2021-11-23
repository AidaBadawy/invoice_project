// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/custom_colors.dart';
import 'package:invoice_app/pages/register/widgets/register_desktop.dart';
import 'package:invoice_app/pages/register/widgets/register_mobile.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.firebaseNavy,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 715) {
              return RegisterDesktop();
            } else {
              return RegisterMobile();
            }
          },
        ));
  }
}
