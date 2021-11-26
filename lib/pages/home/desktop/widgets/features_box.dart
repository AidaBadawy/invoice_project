// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/constants/custom_colors.dart';

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  featureBox('Get Paid Faster',
                      'Businesses that use Invoice App get paid 14 days faster, on average'),
                  SizedBox(width: 15),
                  featureBox('Automate collections',
                      'Waste less time on collections processes with automated email, letter and text communications.'),
                  SizedBox(width: 15),
                  featureBox('Streamline payments',
                      'Provide a better payment experience for customers with a modern frictionless portal'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget featureBox(String title, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          DottedLine(
            direction: Axis.vertical,
            lineLength: 200,
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: CustomColors.greenColor)),
              SizedBox(height: 15),
              SizedBox(
                width: 350,
                child: Text(
                  text,
                  style: TextStyle(letterSpacing: 1.5),
                  softWrap: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
