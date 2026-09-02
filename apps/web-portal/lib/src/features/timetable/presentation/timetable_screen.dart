import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNav(
            currentRoute: '/timetable',
            items: const [
              SideNavItem(label: 'Dashboard', icon: Icons.dashboard_rounded, route: '/dashboard'),
              SideNavItem(label: 'Timetable', icon: Icons.calendar_month_rounded, route: '/timetable'),
            ],
            onItemSelected: (route) => context.go(route),
          ),
          const Expanded(
            child: Column(
              children: [
                TopAppBar(
                  title: 'Academic Timetable',
                  tenantName: 'Stanford University',
                  userName: 'Dr. Jane Smith',
                  role: 'Faculty',
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Academic Timetable Module - Scaffold Active',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
