// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:invoice_app/constants/page_titles.dart';
import 'package:invoice_app/widgets/app_scaffold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.white,
      icon: MaterialIcons.data_usage,
      pageTitle: PageTitles.account,
      body: Center(
        child: Text('This is Account page'),
      ),
    );
  }
}
