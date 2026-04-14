import 'package:flutter/material.dart';
import '../models/team_member.dart';

class MemberCard extends StatelessWidget {
  final TeamMember member;

  const MemberCard({
    super.key,
    required this.member,
  });

  @override
Widget build(BuildContext context) {
  return Card(
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),

    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [],
        ),
      ),
    ),
  );
}
}