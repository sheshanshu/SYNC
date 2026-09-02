import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/timetable/presentation/timetable_screen.dart';

bool _checkAuthentication() {
  // Auth resolution hook
  return true;
}

bool _checkRoleAccess(String route) {
  // RBAC permission check hook
  return true;
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/dashboard',
  redirect: (BuildContext context, GoRouterState state) {
    // Auth & RBAC Route Guard Hook Point
    final bool isAuthenticated = _checkAuthentication();
    final bool hasRoleAccess = _checkRoleAccess(state.uri.toString());

    if (!isAuthenticated) {
      return '/login';
    }

    if (!hasRoleAccess) {
      return '/403';
    }

    return null; // Allowed
  },
  routes: [
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
