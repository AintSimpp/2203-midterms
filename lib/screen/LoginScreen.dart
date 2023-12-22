import 'package:flutter/material.dart';
import 'package:midterm_b/models/CustomTextFormField.dart';
import 'package:midterm_b/screen/Dashboard.dart';
import 'package:midterm_b/screen/Home.dart';
import 'package:midterm_b/screen/ForgotPassword.dart';
import 'package:midterm_b/models/PasswordField.dart';
import 'package:midterm_b/models/PrimaryButton.dart';
import 'package:midterm_b/screen/Registration.dart';
import 'package:midterm_b/models/SecondaryButton.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = "login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CustomTextFormField(
                    labelText: "Email Address",
                    hintText: "Enter a valid email",
                    iconData: Icons.email,
                    textInputType: TextInputType.emailAddress),
                SizedBox(
                  height: 20.0,
                ),
                PasswordField(
                    labelText: "Password",
                    hintText: "Enter your password",
                    obscureText: obscureText,
                    onTap: setPasswordVisibility),
                SizedBox(
                  height: 20.0,
                ),
                PrimaryButton(
                    text: "Login", iconData: Icons.login, onPressed: login),
                SizedBox(
                  height: 20.0,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() {
    Navigator.pushReplacementNamed(context, Home.routeName);
  }

  void setPasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Hello, World App"),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.search),
//             )
//           ],
//         ),
//         body: const Center(
//           child: Text("Hello, World"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(Icons.add),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: "Settings")
//           ],
//         ),
//       ),
//     );
//   }
// }
