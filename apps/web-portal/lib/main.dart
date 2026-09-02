import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';
import 'src/core/routing/app_router.dart';

void main() {
  runApp(const ProviderScope(child: SyncoraWebPortalApp()));
}

class SyncoraWebPortalApp extends StatelessWidget {
  const SyncoraWebPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Syncora Web Portal',
      debugShowCheckedModeBanner: false,
      theme: SyncoraTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}
