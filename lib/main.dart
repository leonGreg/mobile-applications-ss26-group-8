import 'package:flutter/material.dart';
import 'package:mobile_applications_group_8/pages/unit_02/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurpleAccent,
          brightness: Brightness.light,
        ),
      ),
      title: 'Group 8 - Homework',
      // homework unit 02
      home: LoginPage(),
    );
  }
}
