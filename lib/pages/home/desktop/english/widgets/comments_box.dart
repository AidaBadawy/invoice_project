// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CommentsBox extends StatelessWidget {
  const CommentsBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      //height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 80,
                ),
              ),
              SizedBox(width: 45),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 600,
                      child: Text(
                          '"Sick of Paper Invoices? Consider switching to a cloud app like Invoice App to manage & track all of your invoices from a single dashboard."'),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 600,
                      child: Row(children: [
                        Text('Kim George \nFounder of Small business'),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Read More Comments'),
                            ))
                      ]),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
