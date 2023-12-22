import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  static const String routeName = "registration";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Center(
        child: Text("This is the Registration."),
      ),
    );
  }
}
