// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/custom_colors.dart';

class SectorsBox extends StatefulWidget {
  const SectorsBox({Key key}) : super(key: key);

  @override
  State<SectorsBox> createState() => SectorsBoxState();
}

class SectorsBoxState extends State<SectorsBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColors.greenColor,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'يناسب 90% من المشاريع التجاريةs',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'أمثلة القطاعات',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: rowBox('المؤسسات والشركات', Icons.apartment)),
                    Expanded(child: rowBox('البقالات', Icons.shopping_cart)),
                    Expanded(child: rowBox('قطاع التجزئة', Icons.shopping_bag)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: rowBox('قطاع البناء', Icons.house_siding)),
                    Expanded(child: rowBox('الصيدليات', Icons.medication)),
                    Expanded(
                        child: rowBox('المكتبات ومراكز خدمة الطلاب',
                            Icons.bookmark_border_outlined)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: rowBox('المكاتب والموردين', Icons.apartment)),
                    Expanded(
                        child: rowBox(
                            'متاجر الإلكترونيات', Icons.electrical_services)),
                    Expanded(child: rowBox('المدارس', Icons.shopping_bag)),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        child: rowBox('الأعمال الناشئة', Icons.shopping_bag)),
                    Expanded(
                        child: rowBox('المراكز الصحية والمستوصفات',
                            Icons.phonelink_ring_sharp)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowBox(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              width: 250,
              child: Text(title,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 20))),
          SizedBox(width: 10),
          Icon(icon, size: 40, color: Colors.white),
        ],
      ),
    );
  }
}
