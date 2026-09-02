import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

class SideNavItem {
  final String label;
  final IconData icon;
  final String route;

  const SideNavItem({
    required this.label,
    required this.icon,
    required this.route,
  });
}

class SideNav extends StatelessWidget {
  final String currentRoute;
  final List<SideNavItem> items;
  final ValueChanged<String> onItemSelected;

  const SideNav({
    super.key,
    required this.currentRoute,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: SyncoraTheme.primaryNavy,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: SyncoraTheme.accentIndigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.school_rounded, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 12),
              const Text(
                'SYNCORA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'CAMPUS OPERATING SYSTEM',
            style: TextStyle(
              color: SyncoraTheme.textSecondary,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final item = items[index];
                final isSelected = currentRoute == item.route;
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: isSelected ? SyncoraTheme.accentIndigo : SyncoraTheme.textSecondary,
                  ),
                  title: Text(
                    item.label,
                    style: TextStyle(
                      color: isSelected ? Colors.white : SyncoraTheme.textSecondary,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  selected: isSelected,
                  selectedTileColor: SyncoraTheme.surfaceGlass,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onTap: () => onItemSelected(item.route),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
