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
                child: Text('بدأ في الحصول على أموال في الوقت المحدد',
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
                  'مفوتر العمليات المالية ، وتتيح لك مفوتر ذات برمجة عملية حسابات القبض بالكامل ، كاملة مع لوحات المعلومات والتقارير المتكاملة والأدوات المتخصصة لإدارة الحسابات بكفاءة وفعالية.',
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
                    Image.asset('image_one.png', width: 90, height: 90),
                    SizedBox(height: 10),
                    Text('مجموعات', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 400,
                      child: Text(
                          ' "مجموعات مفوتر" إمكانات قوية لفوترة الاشتراك مع الإيرادات المتوقعه',
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
                    Text('مفوتر', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 400,
                      child: Text(
                          'رد بشكل اسرع لكل سؤال في جميع المشاكل الفاتوره والدفع باسرع مدة ممكنه',
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
