// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FaqBox extends StatefulWidget {
  const FaqBox({Key key}) : super(key: key);

  @override
  State<FaqBox> createState() => FaqBoxState();
}

class FaqBoxState extends State<FaqBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Got any questions?'),
            Text('FAQ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('What is Invoice App?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'It is a cloud-based electronic invoicing system that has a POS application'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('Does Invoice App support E-Invoice?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Yes Invoice App supports E-Invoice. Invoice App is a solution provider approved by the Zakat Tax and Customs Authority'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text(
                        'Are subscription for multiple businesses possible?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Yes of course, after subscribing for the first business, you can add subscriptions for many business within the system'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('How much does Invoice App subscription cost?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'The subscription cost depends on the package and the type os subscription (monthly or yearly). For more, see the pricing section'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('What is E-Invoice?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'It is a tax invoice or a simplified invoice issued and stored in an electronic format within an electronic system approved by ZATCA and complies with the E-Invoicing regulations'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('Can I have a trial for the system?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Yes! You can have a 7 days trial period when you register'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: ExpansionTile(
                    leading: Icon(Icons.add, color: Colors.orange),
                    title: Text('Does the subscription include POS devices?'),
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'The subscription does not include any devices, but we offer our customers POS devices and equipments at special prices.'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(width: 450, child: Container())
              ],
            )
          ],
        ),
      ),
    );
  }
}
