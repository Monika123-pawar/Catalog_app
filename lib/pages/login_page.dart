
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login Page',style: TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 3.0,
        ),
      ),
    );
  }
}
