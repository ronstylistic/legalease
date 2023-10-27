import 'package:flutter/material.dart';
import 'package:legalease/utils/Colors.dart';
import 'package:legalease/views/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LegalEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold
          ),
          titleLarge: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),

        ),
      ),
      home: LoginPage(),
    );
  }
}

