// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/custom_colors.dart';

class FaqBox extends StatefulWidget {
  const FaqBox({Key key}) : super(key: key);

  @override
  State<FaqBox> createState() => FaqBoxState();
}

class FaqBoxState extends State<FaqBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Start getting paid on time',
                style: TextStyle(fontSize: 18, color: CustomColors.greenColor)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 56),
              child: SizedBox(
                width: 800,
                child: Text(
                    'Automate financial processes with Accounts Receivable Cloud',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: CustomColors.greenColor)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 48),
              child: Text(
                  'The Invoice App Accounts Receivable Cloud lets you program your entire accounts receivable operation, complete with dashboards, intergrated reporting and specialized tools for effecient, effective Accounts Receivable Management',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 25, color: CustomColors.greenColor)),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/image_one.png', width: 90, height: 90),
                    SizedBox(height: 10),
                    Text('Collections', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 400,
                      child: Text(
                          'Invoiced includes powerful subscription billing capabilities for unlocking predictable revenue growth',
                          style: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
                SizedBox(width: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('invoice_two.png', width: 80, height: 80),
                    SizedBox(height: 10),
                    Text('A/R Intelligence', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 400,
                      child: Text(
                          'Virtually every question answered about the current state and future of your A/R Performance',
                          style: TextStyle(fontSize: 18)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
