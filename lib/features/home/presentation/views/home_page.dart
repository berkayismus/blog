import 'package:blog/core/utils/device_breakpoints_extension.dart';
import 'package:blog/core/utils/title_helper.dart';
import 'package:blog/features/home/presentation/cubit/bottom_navbar_cubit.dart';
import 'package:blog/features/personal_info_summary/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Bu widget'lar örnek amaçlıdır, kendi feature'larına göre düzenleyebilirsin
import '../widgets/desktop_navigation_bar.dart';
import '../widgets/mobile_bottom_navigation_bar.dart';

class HomePageWithBlocProviders extends StatelessWidget {
  const HomePageWithBlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavbarCubit(),
        ),
      ],
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // Sayfa listesi
  static const List<Widget> _pages = <Widget>[
    ProfileSection(),
    Text('Projeler'),
    Text('Hakkımda'),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    setWebTitle('Berkay ÇAYLI | Blog'); // Sayfa yüklendiğinde başlığı değiştir
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isMobile
          ? null
          : AppBar(
              title: const Text('My Portfolio'),
              actions: [
                _buildDesktopNavigationBar(),
              ],
            ),
      body: _buildBody(),
      bottomNavigationBar:
          _buildBottomNavBar(), // Desktop'ta bottom navigation bar'ı gizle
    );
  }

  Widget _buildBody() {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      builder: (context, state) {
        return Center(
          child: SingleChildScrollView(
            child: HomePage._pages
                .elementAt(state.currentIndex), // Seçili sayfayı göster
          ),
        );
      },
    );
  }

  Widget _buildDesktopNavigationBar() {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      builder: (context, state) {
        final cubit = context.read<BottomNavbarCubit>();
        return DesktopNavigationBar(
          selectedIndex: state.currentIndex,
          onItemTapped: cubit.onTap,
        );
      },
    );
  }

  Widget _buildBottomNavBar() {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      builder: (context, state) {
        final cubit = context.read<BottomNavbarCubit>();
        return Visibility(
          visible: context.isMobile,
          child: MobileBottomNavigationBar(
            selectedIndex: state.currentIndex,
            onItemTapped: cubit.onTap,
          ),
        );
      },
    );
  }
}
