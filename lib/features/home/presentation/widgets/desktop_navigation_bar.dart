import 'package:blog/app/constants/app_colors.dart';
import 'package:blog/app/constants/app_text_styles.dart';
import 'package:blog/core/widgets/simple_text.dart';
import 'package:flutter/material.dart';

class DesktopNavigationBar extends StatelessWidget {
  const DesktopNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildNavItem(0, 'Profil'),
        _buildNavItem(1, 'Projeler'),
        _buildNavItem(2, 'Hakkımda'),
        const SizedBox(width: 24),
      ],
    );
  }

  Widget _buildNavItem(int index, String label) {
    return TextButton(
      onPressed: () => onItemTapped(index),
      child: SimpleText(
        text: label,
        style: AppTextStyles.bodyMediumLight.copyWith(
          color: selectedIndex == index
              ? AppColors.primary
              : AppColors.onBackgroundLight,
          fontWeight:
              selectedIndex == index ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
