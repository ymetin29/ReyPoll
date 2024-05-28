import 'package:flutter/material.dart';
import 'package:poll/Providers/authentication_provider.dart';
import 'package:poll/Screens/main_activity_page.dart';
import 'package:poll/Styles/colors.dart';
import 'package:poll/Utils/message.dart';
import 'package:poll/Utils/router.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 255, 255, 255),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthProvider().signInWithGoogle().then((value) {
              if (value.user == null) {
                error(context, message: "Please try again");
              } else {
                nextPageOnly(context, const MainActivityPage());
              }
            });
          },
          child: Container(
            height: 70,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Color.fromRGBO(255, 152, 0, 1),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: const Text(
              "Login with Google Account",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
