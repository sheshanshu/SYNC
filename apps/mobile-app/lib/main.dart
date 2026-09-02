import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  runApp(const ProviderScope(child: SyncoraMobileApp()));
}

class SyncoraMobileApp extends StatelessWidget {
  const SyncoraMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syncora Mobile Shell',
      debugShowCheckedModeBanner: false,
      theme: SyncoraTheme.darkTheme,
      home: const MobileDashboardScreen(),
    );
  }
}

class MobileDashboardScreen extends StatelessWidget {
  const MobileDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncora Mobile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SyncoraIdCard(
              fullName: 'Alex Johnson',
              role: 'Student',
              idNumber: 'STU-2024-9912',
              department: 'Software Engineering',
              organizationName: 'Stanford University',
            ),
            SizedBox(height: 24),
            Text(
              'Mobile Campus Shell Active',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
