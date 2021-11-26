// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/custom_colors.dart';

class FooterBox extends StatelessWidget {
  const FooterBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.greenColor,
      width: double.infinity,
      // height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('INVOICES',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      SizedBox(height: 15),
                      Text('1,515,151 invoices have been sent',
                          style: TextStyle(color: Colors.white)),
                      SizedBox(height: 15),
                      Text('In the past 30 days',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  VerticalDivider(color: Colors.grey),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SYSTEMS',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.fiber_manual_record,
                              size: 16, color: Colors.green),
                          SizedBox(width: 5),
                          Text('All systems operational',
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('No maintenance planned',
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 60),
              child: Divider(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Anything you need help with?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Help Center'),
                    ))
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('General',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Invoice App Home',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('About Invoice App',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Feauters', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Press',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Download Presskit',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Customers', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Legal',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Terms & Conditions',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Privacy Policy',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    Text('Cookie Policy',
                        style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
