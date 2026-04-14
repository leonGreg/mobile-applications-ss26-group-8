import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const _unitPages = [
    _UnitInfo(
      title: 'Homework 1',
      subtitle: 'Login Page',
      routeName: '/unit-02',
    ),
    _UnitInfo(
      title: 'Homework 2',
      subtitle: 'Team Profile Page',
      routeName: '/unit-03',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homework - Group 8'), centerTitle: true),

      // ListView with all unit pages
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: _unitPages.length,
        separatorBuilder: (context, index) => const Divider(height: 1),

        // ListTile for each unit page
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_unitPages[index].title),
            subtitle: Text(_unitPages[index].subtitle),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
            onTap: () =>
                Navigator.pushNamed(context, _unitPages[index].routeName),
          );
        },
      ),
    );
  }
}

class _UnitInfo {
  final String title;
  final String subtitle;
  final String routeName;

  const _UnitInfo({
    required this.title,
    required this.subtitle,
    required this.routeName,
  });
}
