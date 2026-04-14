import 'package:flutter/material.dart';

class TeamInfoSection extends StatelessWidget {
  final String teamDescription;
  final int memberCount;

  const TeamInfoSection({
    super.key,
    required this.teamDescription,
    required this.memberCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.groups),
                const SizedBox(width: 8),
                Text('Members: $memberCount'),
              ],
            ),
            const SizedBox(height: 5),
            Text(teamDescription, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
