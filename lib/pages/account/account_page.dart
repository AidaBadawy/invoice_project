// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:invoice_app/constants/page_titles.dart';
import 'package:invoice_app/constants/text_input.dart';
import 'package:invoice_app/widgets/app_scaffold.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool value = false;
  String email;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.grey.shade100,
      icon: AntDesign.lock1,
      pageTitle: PageTitles.accountedit,
      displayButton: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 290,
                color: Colors.white,
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
                            Text('Account Details',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Container(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('First Name'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText: 'First Name'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Last Name'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText: 'Last Name'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Email Address'),
                                                  Spacer(),
                                                  Text('Login Email Address')
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText:
                                                            'Email Address'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: VerticalDivider(),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Current Password'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'Current Password'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                    SizedBox(height: 8),
                                    Text('New Password'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'New Password'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                    SizedBox(height: 8),
                                    Text('New Password (confirm)'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'New Password (confirm)'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 290,
                color: Colors.white,
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
                            Text('Address & Company Details',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Container(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Address'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText: 'Address'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Postal Code'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText: 'Postal Code'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('State'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(hintText: 'State'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('City'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(hintText: 'City'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Country'),
                                              SizedBox(height: 5),
                                              TextFormField(
                                                decoration: textInputDecoration
                                                    .copyWith(
                                                        hintText: 'Country'
                                                        // hintStyle: TextStyle(
                                                        //     fontWeight: FontWeight.bold)
                                                        ),
                                                validator: (val) => val.isEmpty
                                                    ? 'Enter a valid email'
                                                    : null,
                                                onChanged: (val) {
                                                  setState(() => email = val);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: VerticalDivider(),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Company Name'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'Company Name'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                    SizedBox(height: 8),
                                    Text('Website URL'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'Website URl'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                    SizedBox(height: 8),
                                    Text('Tax ID or VAT Number'),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      decoration: textInputDecoration.copyWith(
                                          hintText: 'Tax ID or VAT Number'
                                          // hintStyle: TextStyle(
                                          //     fontWeight: FontWeight.bold)
                                          ),
                                      validator: (val) => val.isEmpty
                                          ? 'Enter a valid email'
                                          : null,
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                height: 100,
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
                            Text('Other Settings',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Container(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            Checkbox(
                                value: value,
                                onChanged: (bool value) {
                                  setState(() {
                                    value = value;
                                  });
                                }),
                            SizedBox(width: 10),
                            Text(
                                'Receive PDF invoices for your Invoice App subscription via email'),
                            Icon(Icons.help)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                height: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Delete your Invoice App Account',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Container(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Text(
                          'Looking to close your Invoice App account entirely? Click the button below to confirm your account deletion, but be aware all your Invoice App data - including your invoicely business - will be deleted permenantly'),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Clicking "Delete Account" will delete your entire Invoice App account and cannot be undone',
                          style: TextStyle(color: Colors.red)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Delete Account'),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
