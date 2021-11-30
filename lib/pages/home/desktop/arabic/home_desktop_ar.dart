// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/custom_colors.dart';
import 'package:invoice_app/constants/route_names.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/faq_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/features_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/footer_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/main_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/prices_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/sectors_box_ar.dart';
import 'package:invoice_app/pages/home/desktop/arabic/widgets/video_box_ar.dart';

class HomeDesktopArab extends StatefulWidget {
  const HomeDesktopArab({Key key}) : super(key: key);

  @override
  _HomeDesktopArabState createState() => _HomeDesktopArabState();
}

class _HomeDesktopArabState extends State<HomeDesktopArab> {
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
                      print('This is the arabic page');
                    }
                    if (value == 1) {
                      print('Move to english page');
                      await _navigateTo(context, RouteNames.home);
                    }
                  },
                  child: Text('العربية', style: TextStyle(color: color)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("العربية"),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: Text("ENGLISH"),
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
