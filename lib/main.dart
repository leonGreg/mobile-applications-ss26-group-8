import 'package:flutter/material.dart';
import 'package:mobile_applications_group_8/pages/home_page.dart';
import 'package:mobile_applications_group_8/pages/unit_02/login_page.dart';
import 'package:mobile_applications_group_8/pages/unit_03/team_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group 8 - Homework',
      routes: {
        '/unit-02': (context) => LoginPage(),
        '/unit-03': (context) => TeamProfile(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
        ),
      ),
      home: HomePage(),
    );
  }
}
