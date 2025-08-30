import 'package:blog/features/home/presentation/views/home_page.dart';
import 'package:blog/features/personal_info_summary/presentation/views/personal_info_summary_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/personal_info_summary',
      builder: (context, state) => const PersonalInfoSummaryPage(),
    ),
  ],
);
