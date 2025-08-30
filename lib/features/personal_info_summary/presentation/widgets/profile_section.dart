import 'package:blog/app/constants/app_text_styles.dart';
import 'package:blog/core/widgets/responsive_layout.dart';
import 'package:blog/core/widgets/simple_text.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _buildMobileLayout(),
      tablet: _buildWebLayout(),
      desktop: _buildWebLayout(),
    );
  }

  // Mobil cihazlar için dikey (column) düzen
  Widget _buildMobileLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildProfileImage(size: 180),
        const SizedBox(height: 24),
        _buildTexts(isMobile: true),
      ],
    );
  }

  // Web ve tablet için yatay (row) düzen
  Widget _buildWebLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildProfileImage(size: 240),
        const SizedBox(width: 48),
        Expanded(
          child: _buildTexts(isMobile: false),
        ),
      ],
    );
  }

  // Profil fotoğrafını gösteren yardımcı widget
  Widget _buildProfileImage({required double size}) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
              'https://avatars.githubusercontent.com/u/58946126?v=4'), // Projenize uygun bir resim yolu
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Metinleri gösteren yardımcı widget
  Widget _buildTexts({required bool isMobile}) {
    return Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        SimpleText(
          text: 'Hello 👋',
          style: AppTextStyles.bodyMediumLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 8),
        SimpleText(
          text: 'Berkay ÇAYLI',
          style: AppTextStyles.displayMediumLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 16),
        SimpleText(
          text: 'Mobile Application Developer',
          style: AppTextStyles.headlineSmallLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 24),
        SimpleText(
          text:
              'I am a dedicated Flutter Developer with over four years of experience delivering scalable and high-performance mobile applications. At Defacto Teknoloji, I improved app stability from 91% to 99% and reduced app size by 30% through performance-driven solutions. Skilled in Flutter, SwiftUI, Firebase, Git, and Agile practices, I specialize in clean architecture, custom UI libraries, and efficient networking layers. I have built multiple e-commerce and enterprise apps from scratch and launched a SwiftUI Udemy course to share knowledge with developers worldwide. I thrive in collaborative environments and focus on building innovative, user-centered applications.',
          style: AppTextStyles.bodyLargeLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
