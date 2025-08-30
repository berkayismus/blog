import 'package:blog/app/constants/app_text_styles.dart';
import 'package:blog/core/widgets/simple_text.dart';
import 'package:blog/features/personal_info_summary/presentation/widgets/a.dart';
import 'package:flutter/material.dart';

class PersonalInfoSummaryPage extends StatelessWidget {
  const PersonalInfoSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*   appBar: AppBar(
          title: const Text('Personal Info Summary Page'),
        ), */
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: const [
            //PersonalInfoCard(),
            ProfileSection(),
          ],
        ),
      ),
    );
  }
}

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/58946126?v=4',
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            SimpleText(
              text: 'Berkay ÇAYLI',
              style: AppTextStyles.appBarTitleLight,
            ),
            SimpleText(
              text: 'Mobile Application Developer',
              style: AppTextStyles.bodyMediumLight,
            ),
          ],
        ),
      ],
    );
  }
}
