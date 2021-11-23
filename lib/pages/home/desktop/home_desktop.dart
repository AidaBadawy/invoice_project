// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/constants/route_names.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  String popText = 'English';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  TextButton(
                      onPressed: () {},
                      child: Text('Logo',
                          style: TextStyle(color: Colors.blue, fontSize: 25))),
                  Spacer(),
                  TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused)) {
                              return Colors.red;
                            }
                            return null;
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: Text('FEATURES',
                          style: TextStyle(color: Colors.blue))),
                  SizedBox(width: 25),
                  TextButton(
                      onPressed: () {},
                      child: Text('SECTORS',
                          style: TextStyle(color: Colors.blue))),
                  SizedBox(width: 25),
                  TextButton(
                      onPressed: () {},
                      child:
                          Text('PRICES', style: TextStyle(color: Colors.blue))),
                  SizedBox(width: 25),
                  TextButton(
                      onPressed: () {},
                      child: Text('FAQ', style: TextStyle(color: Colors.blue))),
                  SizedBox(width: 35),
                  PopupMenuButton(
                      tooltip: 'Change language',
                      onSelected: (result) {
                        setState(() {
                          popText = result;
                        });
                      },
                      child: Text('English',
                          style: TextStyle(color: Colors.orange)),
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
                  SizedBox(width: 10),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange)),
                      onPressed: () async {
                        await _navigateTo(context, RouteNames.login);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login'),
                      ))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                            'Invoicing system that suits your need without complexity',
                            textStyle: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
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
                              'Introducing Invoice App, the modern cloud e-invoicing system with the most effective POS software for your business. Try it now, live the future.',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: () async {
                                  await _navigateTo(
                                      context, RouteNames.register);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
        )
      ],
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
