// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PricesBox extends StatefulWidget {
  const PricesBox({Key key}) : super(key: key);

  @override
  State<PricesBox> createState() => PricesBoxState();
}

class PricesBoxState extends State<PricesBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Image.asset('assets/home_image.png', width: 600, height: 600),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Prices'),
                SizedBox(height: 10),
                Text('Basic Package',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
                SizedBox(height: 15),
                Text('Annual Subscription: Riyals/Month',
                    style: TextStyle(fontSize: 30)),
                SizedBox(height: 5),
                Text('Monthly Subscription:  Riyals/Month',
                    style: TextStyle(fontSize: 30)),
                SizedBox(height: 5),
                Text('*VAT Exclusive', style: TextStyle(color: Colors.orange)),
                SizedBox(height: 15),
                Text('Including the following features',
                    style: TextStyle(fontSize: 30)),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('E-invoices')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('Tax support')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('Product Management')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('Customers & Suppliers Management')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('Branches Department')
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.fiber_manual_record, size: 16),
                    SizedBox(width: 10),
                    Text('1 POS*'),
                  ],
                ),
                SizedBox(height: 5),
                Text('*For each additional POS:',
                    style: TextStyle(color: Colors.orange)),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Annual subscription:',
                      style: TextStyle(color: Colors.orange)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Manual subscription:',
                      style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
