import 'package:flutter/material.dart';
import '../../data/team_data.dart';
import '../../widgets/member_card.dart';
import '../../widgets/team_info_section.dart';

class TeamProfile extends StatefulWidget {
  const TeamProfile({super.key});

  @override
  State<TeamProfile> createState() => _TeamProfileState();
}

class _TeamProfileState extends State<TeamProfile> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  void goToPrevious() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToNext() {
    if (currentIndex < teamMembers.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile - Team 8'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TeamInfoSection(
              teamDescription: teamDescription,
              memberCount: teamMembers.length,
            ),
            const SizedBox(height: 15),
            Text(
              'Team Member ${currentIndex + 1} of ${teamMembers.length}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: teamMembers.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return MemberCard(member: teamMembers[index]);
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: currentIndex == 0 ? null : goToPrevious,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Previous'),
                ),
                ElevatedButton.icon(
                  onPressed: currentIndex == teamMembers.length - 1
                      ? null
                      : goToNext,
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                teamMembers.length,
                (index) => GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: currentIndex == index ? 12 : 10,
                    height: currentIndex == index ? 12 : 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? Colors.deepPurpleAccent
                          : Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
