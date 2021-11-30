// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/custom_colors.dart';
import 'package:invoice_app/constants/route_names.dart';

class MainBox extends StatefulWidget {
  const MainBox({Key key}) : super(key: key);

  @override
  State<MainBox> createState() => MainBoxState();
}

class MainBoxState extends State<MainBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Put accounts recievable on autopilot.',
                        textStyle: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: CustomColors.greenColor),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                  SizedBox(height: 35),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1800),
                    fadingDuration: Duration(milliseconds: 3000),
                    slidingBeginOffset: Offset(0.0, 2.65),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get paid faster, waste less time and provide a better payment experience with the Invoice App Accounts Recievable Cloud.',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    CustomColors.greenColor)),
                            onPressed: () async {
                              await _navigateTo(context, RouteNames.register);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text('Register'),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset('assets/home_image.png'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
