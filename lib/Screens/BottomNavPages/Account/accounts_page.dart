import 'package:flutter/material.dart';
import 'package:poll/Providers/authentication_provider.dart';
import 'package:poll/Screens/Authentication/auth_page.dart';
import 'package:poll/Screens/main_activity_page.dart';
import 'package:poll/Screens/splash_screen.dart';
import 'package:poll/Styles/colors.dart';
import 'package:poll/Utils/message.dart';
import 'package:poll/Utils/router.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 255, 255, 255),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthProvider().logOut().then((value) {
              nextPageOnly(context, const SplashScreen());
            });
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 152, 0, 1),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: const Text("Log Out"),
          ),
        ),
      ),
    );
  }
}
