// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
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
              child: Image.asset('assets/home_image.png'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                          'مفوتر موقع إلكتروني يساعد على دفع اسرع بطريقة امنة',
                          textStyle: TextStyle(
                              locale: Locale.fromSubtags(languageCode: 'ar'),
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: CustomColors.greenColor),
                          textAlign: TextAlign.end),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                            'احصل على مدفوعاتك بشكل أسرع ، وأهدار وقت أقل ، ووفر تجربة دفع أفضل مع سحابة مفوتر',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.end),
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
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
