import 'package:blog/app/constants/app_text_styles.dart';
import 'package:blog/core/widgets/simple_text.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran boyutunu alarak mobil ve web için düzeni ayarla
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Center(
      child: isMobile ? _buildMobileLayout() : _buildWebLayout(),
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
          text: 'Merhaba, Ben',
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
          text: 'Mobil Uygulama Geliştirici',
          style: AppTextStyles.headlineSmallLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 24),
        SimpleText(
          text:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...',
          style: AppTextStyles.bodyLargeLight,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
