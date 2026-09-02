import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String tenantName;
  final String userName;
  final String role;
  final VoidCallback? onNotificationTap;

  const TopAppBar({
    super.key,
    required this.title,
    required this.tenantName,
    required this.userName,
    required this.role,
    this.onNotificationTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: SyncoraTheme.primaryNavy,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: SyncoraTheme.accentIndigo.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: SyncoraTheme.accentIndigo, width: 0.8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.domain_rounded, size: 14, color: SyncoraTheme.accentIndigo),
                const SizedBox(width: 6),
                Text(
                  tenantName,
                  style: const TextStyle(
                    color: SyncoraTheme.accentIndigo,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded, color: Colors.white),
            onPressed: onNotificationTap,
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: SyncoraTheme.accentIndigo,
                radius: 18,
                child: Text(
                  userName.isNotEmpty ? userName[0].toUpperCase() : 'U',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  Text(
                    role,
                    style: const TextStyle(color: SyncoraTheme.textSecondary, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
