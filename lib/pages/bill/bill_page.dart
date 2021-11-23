// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/page_titles.dart';
import 'package:invoice_app/constants/text_input.dart';
import 'package:invoice_app/widgets/app_scaffold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  String selectedValueOne = 'English (US)';
  List itemsOne = ['English (US)', 'Arabic', 'French', 'German'];
  String selectedValueTwo = 'United States Dollar - USD';
  List itemsTwo = ['United States Dollar - USD', 'Euro - EUR'];
  String selectedValueThree = 'Immediately';
  List itemsThree = ['Immediately', 'One week', 'One month', 'Six months'];
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.white,
      icon: Feather.file_text,
      pageTitle: PageTitles.bill,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('PAID',
                                style: TextStyle(color: Colors.white)),
                          )),
                      SizedBox(width: 15),
                      Text('Bill',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28)),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 40,
                        child: Text('Logo',
                            style: GoogleFonts.dancingScript(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Please find attached your invoice. Thank you for timely payment'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Invoice No.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  color: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('#',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text('Inv-727',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Language',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Container(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: dropDown(itemsOne, selectedValueOne),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Currency',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Container(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: dropDown(itemsTwo, selectedValueTwo),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('From',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.grey.shade300,
                            ),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aidarus Badawy',
                                    style: TextStyle(letterSpacing: 1.5),
                                  ),
                                  Text(
                                    '80 Home Street',
                                    style: TextStyle(letterSpacing: 1.5),
                                  ),
                                  Text(
                                    'London 88W',
                                    style: TextStyle(letterSpacing: 1.5),
                                  ),
                                  Text(
                                    'United Kingdom',
                                    style: TextStyle(letterSpacing: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text('To',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                            'Aidarus Badawy',
                            style: TextStyle(letterSpacing: 1.5),
                          ),
                          Text(
                            '80 Home Street',
                            style: TextStyle(letterSpacing: 1.5),
                          ),
                          Text(
                            'London 88W',
                            style: TextStyle(letterSpacing: 1.5),
                          ),
                          Text(
                            'United Kingdom',
                            style: TextStyle(letterSpacing: 1.5),
                          )
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: textInputDecoration.copyWith(
                                  hintText: 'Enter Date'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Date' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                            SizedBox(height: 15),
                            Text('Invoice Due',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Container(
                              color: Colors.grey.shade300,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: dropDown(itemsThree, selectedValueThree),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text('Purchase Order Number',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: textInputDecoration.copyWith(
                                  hintText: 'Enter Purchase Order Number'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Client name' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: newtextInputDecoration.copyWith(
                                  hintText: 'Enter Description'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Client name' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.copy, color: Colors.grey),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.card_giftcard,
                                          color: Colors.grey),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.link, color: Colors.grey),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Icon(Icons.tag, color: Colors.grey),
                                    )),
                                Spacer(),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.card_giftcard,
                                          color: Colors.grey),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.shopping_cart,
                                        color: Colors.grey),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Icon(Icons.shop, color: Colors.grey),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Quantity',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: newtextInputDecoration.copyWith(
                                  hintText: 'Quantity'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Client name' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Rate',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: newtextInputDecoration.copyWith(
                                  hintText: 'Rate'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) => val.isEmpty ? 'Rate' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Amount',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: newtextInputDecoration.copyWith(
                                  hintText: 'Amount'
                                  // hintStyle: TextStyle(
                                  //     fontWeight: FontWeight.bold)
                                  ),
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Client name' : null,
                              onChanged: (val) {
                                // setState(() => email = val);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('New Line'),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Sub Total'),
                                Spacer(),
                                Text('150.00'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Divider(),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Easter Discount'),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('10%'),
                                    )),
                                Spacer(),
                                Text('15.00')
                              ],
                            ),
                            SizedBox(height: 3),
                            Divider(),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Text('Total (USD)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text('135.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 4),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Total Due',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text('USD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text('0.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 3),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text('Email: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('example@email.com'),
                      SizedBox(width: 30),
                      Text('Phone: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('+123456789')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget dropDown(List items, String selectedValue) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
          value: selectedValue,
          items: items.map(
            (val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            },
          ).toList(),
          onChanged: (String newValue) {
            setState(() {
              selectedValue = newValue;
            });
          }),
    );
  }
}
