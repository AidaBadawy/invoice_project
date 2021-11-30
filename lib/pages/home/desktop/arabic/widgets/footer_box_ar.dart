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
           
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text('عام',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: Text('الصفحة الرئيسية',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('About Invoice App',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Feauteres',
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text('Press',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: Text('Download Presskit',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('اتصل بنا',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Customers',
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text('قوانين',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: Text('البنود و الشروط',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Privacy Policy',
                            style: TextStyle(color: Colors.white))),
                    TextButton(
                        onPressed: () {},
                        child: Text('Cookie Policy',
                            style: TextStyle(color: Colors.white))),
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
