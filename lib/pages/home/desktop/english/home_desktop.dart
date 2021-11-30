// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/custom_colors.dart';
import 'package:invoice_app/constants/route_names.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/faq_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/features_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/footer_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/main_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/prices_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/sectors_box.dart';
import 'package:invoice_app/pages/home/desktop/english/widgets/video_box.dart';

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
  final Color color = CustomColors.greenColor;

  Future scrollToItem(GlobalKey key, double align) async {
    final context = key.currentContext;
    await Scrollable.ensureVisible(context,
        duration: Duration(seconds: 1), alignment: align);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.greenColor,
        child: Icon(Icons.chat),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Logo',
                style: GoogleFonts.dancingScript(
                    fontSize: 40, fontWeight: FontWeight.bold, color: color)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(featurekey, 0.5);
                  },
                  child: Text('FEATURES', style: TextStyle(color: color))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(sectorkey, 0);
                  },
                  child: Text('SECTORS', style: TextStyle(color: color))),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextButton(
            //       onPressed: () {
            //         scrollToItem(priceskey, 0);
            //       },
            //       child: Text('PRICES', style: TextStyle(color: color))),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 25, 8),
              child: TextButton(
                  onPressed: () {
                    scrollToItem(faqkey, 0);
                  },
                  child: Text('FAQ', style: TextStyle(color: color))),
            ),
            Center(
              child: PopupMenuButton(
                  tooltip: 'Change language',
                  onSelected: (value) async {
                    if (value == 0) {
                      print('This is original english page');
                    }
                    if (value == 1) {
                      print('Move to arabic page');
                      await _navigateTo(context, RouteNames.homear);
                    }
                  },
                  child: Text('ENGLISH', style: TextStyle(color: color)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("ENGLISH"),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: Text("العربية"),
                          value: 1,
                        )
                      ]),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(color)),
                    onPressed: () async {
                      await _navigateTo(context, RouteNames.login);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Login'),
                    )),
              ),
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
            SizedBox(height: 30),
            VideoApp(),
            FaqBox(key: faqkey),
            // CommentsBox(),
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
