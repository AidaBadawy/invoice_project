// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: SpinKitCubeGrid(
          color: Colors.blue,
          size: 80.0,
        ),
      ),
    );
  }
}
