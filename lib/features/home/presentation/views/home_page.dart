import 'package:blog/features/personal_info_summary/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';

// Bu widget'lar örnek amaçlıdır, kendi feature'larına göre düzenleyebilirsin
import '../widgets/desktop_navigation_bar.dart';
import '../widgets/mobile_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Seçili sayfanın index'i

  // Sayfa listesi
  static const List<Widget> _pages = <Widget>[
    ProfileSection(),
    Text('Projeler'),
    Text('Hakkımda'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğine göre mobil mi yoksa web/desktop mı olduğunu kontrol et
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Scaffold(
      appBar: isMobile
          ? null // Mobilde AppBar'ı gizle
          : AppBar(
              title: const Text('My Portfolio'),
              actions: [
                // Desktop navigasyon çubuğu öğelerini buraya ekle
                DesktopNavigationBar(
                  selectedIndex: _selectedIndex,
                  onItemTapped: _onItemTapped,
                ),
              ],
            ),
      body: Center(
        child: SingleChildScrollView(
          child: _pages.elementAt(_selectedIndex), // Seçili sayfayı göster
        ),
      ),
      bottomNavigationBar: isMobile
          ? MobileBottomNavigationBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            )
          : null, // Desktop'ta bottom navigation bar'ı gizle
    );
  }
}
