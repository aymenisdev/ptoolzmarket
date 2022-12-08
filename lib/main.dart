import 'package:flutter/material.dart';
import 'package:sales/ui/homePage.dart';
import 'package:sales/ui/loginPage.dart';

import 'backend/conest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pttolz Markitting',
      theme: ThemeData(
        // ignore: deprecated_member_use
        buttonColor: primaryColor,
        primarySwatch: materialPrimaryColor,
        fontFamily: 'Avenir',
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
