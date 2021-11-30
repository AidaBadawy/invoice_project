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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  featureBox('Get Paid Faster',
                      'احصل على مدفوعاتك بشكل أسرع. تحصل الشركات التي تستخدم نظام الفواتير على مدفوعات أسرع بـ 14 يومًا ، في المتوسط'),
                  SizedBox(width: 15),
                  featureBox('Automate collections',
                      'مفوتر . إهدار وقت أقل في عمليات التحصيل من خلال الاتصالات الآلية عبر البريد الإلكتروني والرسائل والنص'),
                  SizedBox(width: 15),
                  featureBox('Streamline payments',
                      'تبسيط المدفوعات: توفير تجربة دفع أفضل للعملاء من خلال بوابة حديثة خالية من المشاكل'),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,
                  textAlign: TextAlign.end,
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
                   textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
