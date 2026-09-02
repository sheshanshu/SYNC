import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/timetable/presentation/timetable_screen.dart';
import '../../features/gradebook/presentation/gradebook_screen.dart';
import '../../features/attendance/presentation/attendance_screen.dart';
import '../../features/finance/presentation/finance_screen.dart';
import '../../features/security/presentation/security_screen.dart';
import '../../features/notifications/presentation/notifications_screen.dart';

bool _checkAuthentication() {
  return true;
}

bool _checkRoleAccess(String route) {
  return true;
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/faculty/dashboard',
  redirect: (BuildContext context, GoRouterState state) {
    final bool isAuthenticated = _checkAuthentication();
    final bool hasRoleAccess = _checkRoleAccess(state.uri.toString());

    if (!isAuthenticated) {
      return '/login';
    }

    if (!hasRoleAccess) {
      return '/403';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/faculty/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/faculty/gradebook',
      builder: (context, state) => const GradebookScreen(),
    ),
    GoRoute(
      path: '/faculty/attendance',
      builder: (context, state) => const AttendanceScreen(),
    ),
    GoRoute(
      path: '/faculty/timetable',
      builder: (context, state) => const TimetableScreen(),
    ),
    GoRoute(
      path: '/admin/finance',
      builder: (context, state) => const FinanceScreen(),
    ),
    GoRoute(
      path: '/admin/security',
      builder: (context, state) => const SecurityScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/timetable',
      builder: (context, state) => const TimetableScreen(),
    ),
  ],
);
