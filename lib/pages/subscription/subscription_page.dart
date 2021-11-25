// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:invoice_app/constants/page_titles.dart';
import 'package:invoice_app/widgets/app_scaffold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.grey.shade100,
      icon: Feather.star,
      pageTitle: PageTitles.subscriptionplan,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Subscription',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text(
                              'Billing Preferences',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Text('Your subscription')),
                                SizedBox(width: 35),
                                Expanded(
                                  flex: 4,
                                  child: Text('Basic Plan(9.99 / Month',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Saved Clients'),
                                  SizedBox(width: 35),
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Text('Invoices Last month'),
                                  SizedBox(width: 35),
                                  Text('0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 500,
                child: Row(
                  //No one
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Text('Free',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(height: 10),
                                Container(
                                    color: Colors.green.shade100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('0.00 / mo'),
                                    )),
                                SizedBox(height: 20),
                                Divider(),
                                Text('5 invoices / Month'),
                                SizedBox(height: 5),
                                Text('3 Saved Clents'),
                                Divider(),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('100 Email Deliveries'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('10 Saved Items'),
                                ]),
                                Spacer(),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Downgrade',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(width: 10),
                    // No two
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey.shade300,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Text('Basic',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(height: 10),
                                Container(
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('9.99 / mo',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )),
                                SizedBox(height: 20),
                                Divider(),
                                Text('100 invoices / Month'),
                                SizedBox(height: 5),
                                Text('25 Saved Clents'),
                                Divider(),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('2 Team Members'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Unlimited Saved Items'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Bills & Estimates'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Track Time & Expenses'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Recurring Statements'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Online Payments'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Remove Branding'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Custom Emails'),
                                ]),
                                Spacer(),
                                Center(
                                  child: Text('renews 2021-12-01',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Text('Professional',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(height: 10),
                                Container(
                                    color: Colors.green.shade100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('19.99 / mo'),
                                    )),
                                SizedBox(height: 20),
                                Divider(),
                                Text('250 invoices / Month'),
                                SizedBox(height: 5),
                                Text('100 Saved Clents'),
                                Divider(),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('10 Team Members'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Unlimited Saved Items'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Bills & Estimates'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Track Time & Expenses'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Recurring Statements'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Online Payments'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Remove Branding'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Custom Emails'),
                                ]),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Custom Domain'),
                                ]),
                                Spacer(),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Upgrade',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                Text('Enterprise',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(height: 10),
                                Container(
                                    color: Colors.green.shade100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('29.99 / mo'),
                                    )),
                                SizedBox(height: 20),
                                Divider(),
                                Text('Unlimited Invoices'),
                                SizedBox(height: 5),
                                Text('Unlimited Clients'),
                                Divider(),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('25 Team Members'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Unlimited Saved Items'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Bills & Estimates'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Track Time & Expenses'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Recurring Statements'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Online Payments'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Remove Branding'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Custom Emails'),
                                ]),
                                SizedBox(height: 5),
                                Row(children: [
                                  Icon(Icons.add, size: 20),
                                  SizedBox(width: 15),
                                  Text('Custom Domain'),
                                ]),
                                Spacer(),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Upgrade',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
