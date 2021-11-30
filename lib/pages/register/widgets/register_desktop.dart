// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/constants/custom_colors.dart';
import 'package:invoice_app/constants/route_names.dart';
import 'package:invoice_app/constants/text_input.dart';

class RegisterDesktop extends StatefulWidget {
  const RegisterDesktop({Key key}) : super(key: key);

  @override
  _RegisterDesktopState createState() => _RegisterDesktopState();
}

class _RegisterDesktopState extends State<RegisterDesktop> {
  String email = '';
  int selectedTab = 0;
  var container;
  Color color;
  Color tabcolor1;
  Color tabcolor2;
  Color tabcolor3;
  Color colorText;
  Color colorTextTwo;
  Color colorTextThree;

  @override
  Widget build(BuildContext context) {
    if (selectedTab == 0) {
      colorText = Colors.white;
      colorTextTwo = Colors.grey;
      colorTextThree = Colors.grey;

      tabcolor1 = Colors.blueGrey.shade300;
      tabcolor2 = Colors.blueGrey.shade700;
      tabcolor3 = Colors.blueGrey.shade700;
      container = containerOne();
    } else if (selectedTab == 1) {
      colorText = Colors.grey;
      colorTextTwo = Colors.white;
      colorTextThree = Colors.grey;

      tabcolor1 = Colors.blueGrey.shade700;
      tabcolor2 = Colors.blueGrey.shade300;
      tabcolor3 = Colors.blueGrey.shade700;
      container = containerTwo();
    } else if (selectedTab == 2) {
      colorText = Colors.grey;
      colorTextTwo = Colors.grey;
      colorTextThree = Colors.white;

      tabcolor1 = Colors.blueGrey.shade700;
      tabcolor2 = Colors.blueGrey.shade700;
      tabcolor3 = Colors.blueGrey.shade300;
      container = containerThree();
    }
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 10),
              // Text('Invoice App',
              //     style: GoogleFonts.dancingScript(
              //         fontSize: 40,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white)),
              // SizedBox(height: 20),
              // Text('Free, Unlimited Invoicing',
              //     style: TextStyle(color: Colors.white, fontSize: 24)),
              // SizedBox(height: 20),
              // SizedBox(
              //   width: 600,
              //   child: Text(
              //       'Thank you for choosing Invoice App. You\'re just a few steps from unlimited invoicing',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(color: Colors.white, fontSize: 16)),
              // ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: colorText, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: tabcolor1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 24),
                            child: Text('SIGN UP',
                                style:
                                    TextStyle(color: colorText, fontSize: 14)),
                          )),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4.0,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: colorTextTwo),
                            borderRadius: BorderRadius.circular(4),
                            color: tabcolor2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 24),
                            child: Text('ACCOUNT',
                                style: TextStyle(
                                    color: colorTextTwo, fontSize: 14)),
                          )),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4.0,
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: colorTextThree),
                            borderRadius: BorderRadius.circular(4),
                            color: tabcolor3,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 24),
                            child: Text('BUSINESS',
                                style: TextStyle(
                                    color: colorTextThree, fontSize: 14)),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(child: container),
              SizedBox(height: 20),
              Text('Already a member?',
                  style: GoogleFonts.dancingScript(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 10),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(CustomColors.firebaseOrange)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> _navigateTo(BuildContext context, String routeName) async {
  //   await Navigator.pushNamed(context, routeName);
  // }

  Widget containerOne() {
    return Container(
        color: Colors.grey.shade100,
        width: 350,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Sign Up', style: TextStyle(fontSize: 30)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text('E-mail Address*',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Enter a valid E-mail address'
                      // hintStyle: TextStyle(
                      //     fontWeight: FontWeight.bold)
                      ),
                  validator: (val) =>
                      val.isEmpty ? 'Enter a valid email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Password*',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Minimum 6 characters'
                      // hintStyle: TextStyle(
                      //     fontWeight: FontWeight.bold)
                      ),
                  validator: (val) =>
                      val.length < 6 ? 'Enter minimum of 6 characters' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Password (confirm)*',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Passwords must match'
                      // hintStyle: TextStyle(
                      //     fontWeight: FontWeight.bold)
                      ),
                  validator: (val) =>
                      val.length < 6 ? 'Enter minimum of 6 characters' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.blueGrey.shade100,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8),
                    child: Text(
                        'By Proceeding you agree \nto the Terms of Use and Privacy Policy',
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange)),
                        onPressed: () {
                          setState(() {
                            selectedTab = 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text('Proceed'),
                        ))
                  ],
                ),
              )
            ]));
  }

  Widget containerTwo() {
    return Container(
        color: Colors.grey.shade100,
        width: 650,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Tell us about you',
                        style: TextStyle(fontSize: 30)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('First Name*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Last Name*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Company Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Website URL',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Postal Code*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('State',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tax ID or VAT Number',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('City*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Country*',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: ''
                                    // hintStyle: TextStyle(
                                    //     fontWeight: FontWeight.bold)
                                    ),
                            validator: (val) =>
                                val.isEmpty ? 'Enter a valid email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(),
                    Spacer(),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange)),
                        onPressed: () {
                          setState(() {
                            selectedTab = 2;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text('Proceed'),
                        ))
                  ],
                ),
              )
            ]));
  }

  Widget containerThree() {
    return Container(
      color: Colors.grey.shade100,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Set up your Business',
                    style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Business Name*',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: textInputDecoration.copyWith(hintText: ''
                  // hintStyle: TextStyle(
                  //     fontWeight: FontWeight.bold)
                  ),
              validator: (val) => val.isEmpty ? 'Enter a valid email' : null,
              onChanged: (val) {
                setState(() => email = val);
              },
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Vanity URL*',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: textInputDecoration.copyWith(hintText: ''
                  // hintStyle: TextStyle(
                  //     fontWeight: FontWeight.bold)
                  ),
              validator: (val) =>
                  val.length < 6 ? 'Enter minimum of 6 characters' : null,
              onChanged: (val) {
                setState(() => email = val);
              },
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange)),
                      onPressed: () {
                        setState(() {
                          selectedTab = 0;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Start using Invoice App'),
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
