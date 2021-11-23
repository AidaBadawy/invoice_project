// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/page_titles.dart';
import 'package:invoice_app/pages/dashboard/widgets/column_chart.dart';
import 'package:invoice_app/pages/dashboard/widgets/doughnut_chart.dart';
import 'package:invoice_app/pages/dashboard/widgets/line_chart.dart';
import 'package:invoice_app/widgets/app_scaffold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.white,
      icon: MaterialIcons.data_usage,
      pageTitle: PageTitles.dashboard,
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Recent Activity',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Spacer(),
                                    Text(
                                      'View Activity Log',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                              child: Row(children: [
                                Text('5 hours ago - ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Invoice created for Meshari')
                              ]),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                              child: Row(children: [
                                Text('3 hours ago - ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Invoice created for David')
                              ]),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                              child: Row(children: [
                                Text('2 hours ago - ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Invoice created for Arthur')
                              ]),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('At a Glance',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Spacer(),
                                  Container()
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                            child: Row(children: [
                              Icon(Icons.replay, size: 16),
                              SizedBox(width: 5),
                              Text('Invoice created for Meshari'),
                              Spacer(),
                              Text('123,456.00 USD'),
                            ]),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                            child: Row(children: [
                              Icon(Icons.done, size: 16),
                              SizedBox(width: 5),
                              Text('Invoice created for Meshari'),
                              Spacer(),
                              Text('123,456.00 USD'),
                            ]),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16.0, 8, 8, 8),
                            child: Row(children: [
                              Icon(Icons.replay, size: 16),
                              SizedBox(width: 5),
                              Text('Invoice created for Meshari'),
                              Spacer(),
                              Text('123,456.00 USD'),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 350,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Estimates (Last 12 Months)',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Spacer(),
                            Container()
                          ],
                        ),
                      ),
                    ),
                    ColumnChart(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Invoice Summary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Spacer(),
                                  Container()
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DoughnutChart(),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.grey.shade200,
                                        child: Row(
                                          children: [
                                            Container(
                                              color: Colors.black,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: SizedBox(
                                                    height: 15,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Invoiced',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Spacer(),
                                            Text('USD 2,7397.90'),
                                            SizedBox(width: 2),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        color: Colors.grey.shade200,
                                        child: Row(
                                          children: [
                                            Container(
                                              color: Colors.green,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: SizedBox(
                                                    height: 15,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Received',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Spacer(),
                                            Text('USD 2,7397.90'),
                                            SizedBox(width: 2),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        color: Colors.grey.shade200,
                                        child: Row(
                                          children: [
                                            Container(
                                              color: Colors.red,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: SizedBox(
                                                    height: 15,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(width: 10),
                                            Text('Outstanding',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Spacer(),
                                            Text('USD 274.90'),
                                            SizedBox(width: 2),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Income VS Expenditure',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Spacer(),
                                  Container()
                                ],
                              ),
                            ),
                          ),
                          LineChart(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('Accounts Receivable',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text('Total: USD 189.00')
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('Invoice created for Meshari'),
                            trailing: Text('123.00 USD'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Invoice created for Meshari'),
                            trailing: Text('56.00 USD'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('Accounts Payable',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text('Total: USD 46.00')
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('Invoice created for Meshari'),
                            trailing: Text('23.00 USD'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Invoice created for Meshari'),
                            trailing: Text('23.00 USD'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
