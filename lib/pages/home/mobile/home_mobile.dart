// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key key}) : super(key: key);

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Invoicing system that suits your need without complexity',
                    textStyle:
                        TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              SizedBox(height: 35),
              DelayedDisplay(
                delay: Duration(milliseconds: 1760),
                fadingDuration: Duration(milliseconds: 2500),
                slidingBeginOffset: Offset(0.0, 2.65),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Introducing Invoice App, the modern cloud e-invoicing system with the most effective POS software for your business. Try it now, live the future.',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Register'),
                        ))
                  ],
                ),
              ),
              Image.asset('assets/home_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
