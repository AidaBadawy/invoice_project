// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:invoice_app/constants/route_names.dart';
import 'package:invoice_app/constants/text_input.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key key}) : super(key: key);

  @override
  _LoginMobileState createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Please enter your username and',
              style: TextStyle(fontSize: 24)),
          Text('password to login', style: TextStyle(fontSize: 24)),
          SizedBox(height: 25),
          Text('E-mail', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'E-mail'
                // hintStyle: TextStyle(
                //     fontWeight: FontWeight.bold)
                ),
            validator: (val) => val.isEmpty ? 'Enter a valid email' : null,
            onChanged: (val) {
              setState(() => email = val);
            },
          ),
          SizedBox(height: 10),
          Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Password'
                // hintStyle: TextStyle(
                //     fontWeight: FontWeight.bold)
                ),
            validator: (val) => val.isEmpty ? 'Password field is empty' : null,
            onChanged: (val) {
              setState(() => email = val);
            },
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Forgot password?'),
              ),
            ],
          ),
          SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () async {
                await _navigateTo(context, RouteNames.dashboard);
              },
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () async {
                  await _navigateTo(context, RouteNames.register);
                },
                child: Text('Register'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
