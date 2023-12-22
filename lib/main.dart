import 'package:flutter/material.dart';
import 'package:midterm_b/screen/Home.dart';
import 'package:midterm_b/screen/LoginScreen.dart';
import 'package:midterm_b/routes/routes.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
    routes: routes,
  ));
}
