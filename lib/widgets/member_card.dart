import 'package:flutter/material.dart';
import '../models/team_member.dart';

class MemberCard extends StatelessWidget {
  final TeamMember member;

  const MemberCard({super.key, required this.member});

  Widget _buildSection(IconData icon, String title, String value) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 5),
          Text(value, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              Center(
                // Image
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(member.imagePath),
                ),
              ),

              const SizedBox(height: 15),

              Center(
                child: Text(
                  member.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              _buildSection(Icons.public, 'Home Country', member.country),

              const SizedBox(height: 20),

              _buildSection(Icons.work, 'Role', member.role),

              const SizedBox(height: 20),

              _buildSection(Icons.favorite, 'Hobbies', member.hobbies),

              const SizedBox(height: 20),

              _buildSection(Icons.format_quote, 'Motto', member.motto),
            ],
          ),
        ),
      ),
    );
  }
}
