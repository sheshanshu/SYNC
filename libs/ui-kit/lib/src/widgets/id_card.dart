import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

class SyncoraIdCard extends StatelessWidget {
  final String fullName;
  final String role;
  final String idNumber;
  final String department;
  final String organizationName;
  final String? avatarUrl;

  const SyncoraIdCard({
    super.key,
    required this.fullName,
    required this.role,
    required this.idNumber,
    required this.department,
    required this.organizationName,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 210,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: SyncoraTheme.accentIndigo.withValues(alpha: 0.4), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: SyncoraTheme.accentIndigo.withValues(alpha: 0.15),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.school, color: SyncoraTheme.accentIndigo, size: 22),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  organizationName.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: SyncoraTheme.accentIndigo,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  role.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: SyncoraTheme.accentIndigo.withValues(alpha: 0.3),
                child: Text(
                  fullName.isNotEmpty ? fullName[0] : 'S',
                  style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'ID: $idNumber',
                      style: const TextStyle(
                        color: SyncoraTheme.accentIndigo,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      department,
                      style: const TextStyle(
                        color: SyncoraTheme.textSecondary,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white24),
                ),
                child: const Icon(Icons.qr_code_2_rounded, color: Colors.white, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
