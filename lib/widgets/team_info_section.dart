import 'package:flutter/material.dart';

class TeamInfoSection extends StatelessWidget {
  final String teamName;
  final String teamDescription;
  final int memberCount;

  const TeamInfoSection({
    super.key,
    required this.teamName,
    required this.teamDescription,
    required this.memberCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              teamName,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              teamDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.groups),
                const SizedBox(width: 8),
                Text('Members: $memberCount'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}