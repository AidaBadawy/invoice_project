// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FeaturesBox extends StatefulWidget {
  const FeaturesBox({Key key}) : super(key: key);

  @override
  State<FeaturesBox> createState() => FeaturesBoxState();
}

class FeaturesBoxState extends State<FeaturesBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: featureBox(Icons.fast_forward, 'Fast & Easy',
                      'Designed simple, built with cutting edge technologies that ensures speed and flexibility')),
              SizedBox(width: 15),
              Expanded(
                  child: featureBox(Icons.language_rounded, 'Bilingual',
                      'Arabic & English support; language will not be a barrier with Invoice App')),
              SizedBox(width: 15),
              Expanded(
                  child: featureBox(Icons.lock, 'Maximum Protection',
                      'Periodic data backup, while using the most robust and safest encryption methods')),
              SizedBox(width: 15),
              Expanded(
                  child: featureBox(
                      Icons.local_attraction_sharp,
                      'ZATCA Certified',
                      'Approved by the Zakat, Tax and Customs Authority (ZATCA) and support e-invoice')),
            ],
          ),
        ),
      ),
    );
  }

  Widget featureBox(IconData icon, String title, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.orange, size: 30),
          SizedBox(height: 20),
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(letterSpacing: 1.5),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
