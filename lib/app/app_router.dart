import 'package:blog/features/presentation/views/personal_info_summary_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PersonalInfoSummaryPage(),
    ),
  ],
);
