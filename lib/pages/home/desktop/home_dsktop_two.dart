// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/route_names.dart';
import 'package:invoice_app/pages/home/desktop/widgets/comments_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/faq_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/features_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/footer_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/main_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/prices_box.dart';
import 'package:invoice_app/pages/home/desktop/widgets/sectors_box.dart';

class HomeDesktopTwo extends StatefulWidget {
  const HomeDesktopTwo({Key key}) : super(key: key);

  @override
  _HomeDesktopTwoState createState() => _HomeDesktopTwoState();
}

class _HomeDesktopTwoState extends State<HomeDesktopTwo> {
  final mainkey = GlobalKey<MainBoxState>();
  final featurekey = GlobalKey<FeaturesBoxState>();
  final sectorkey = GlobalKey<SectorsBoxState>();
  final priceskey = GlobalKey<PricesBoxState>();
  final faqkey = GlobalKey<FaqBoxState>();

  Future scrollToItem(GlobalKey key, double align) async {
    final context = key.currentContext;
    await Scrollable.ensureVisible(context,
        duration: Duration(seconds: 1), alignment: align);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Logo',
                style: GoogleFonts.dancingScript(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(featurekey, 0.5);
                  },
                  child: Text('FEATURES')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(sectorkey, 0);
                  },
                  child: Text('SECTORS')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(priceskey, 0);
                  },
                  child: Text('PRICES')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(faqkey, 0);
                  },
                  child: Text('FAQ')),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PopupMenuButton(
                  tooltip: 'Change language',
                  // onSelected: (result) {
                  //   setState(() {
                  //     popText = result;
                  //   });
                  // },
                  child:
                      Text('English', style: TextStyle(color: Colors.orange)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("English"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Arabic"),
                          value: 2,
                        )
                      ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  onPressed: () async {
                    await _navigateTo(context, RouteNames.login);
                  },
                  child: Text('Login')),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainBox(key: mainkey),
            FeaturesBox(key: featurekey),
            SectorsBox(key: sectorkey),
            PricesBox(key: priceskey),
            FaqBox(key: faqkey),
            CommentsBox(),
            FooterBox(),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
