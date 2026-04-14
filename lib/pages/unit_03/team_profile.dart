import 'package:flutter/material.dart';

class TeamProfile extends StatelessWidget {
  const TeamProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Team Profile'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text('Unit 03', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
