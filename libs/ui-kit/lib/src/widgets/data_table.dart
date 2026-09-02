import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

class SyncoraColumn {
  final String title;
  final double? width;

  const SyncoraColumn({required this.title, this.width});
}

class SyncoraDataTable extends StatelessWidget {
  final List<SyncoraColumn> columns;
  final List<List<Widget>> rows;

  const SyncoraDataTable({
    super.key,
    required this.columns,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SyncoraTheme.primaryNavy,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: SyncoraTheme.surfaceGlass, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            color: SyncoraTheme.surfaceGlass,
            child: Row(
              children: columns.map((col) {
                return Expanded(
                  flex: col.width != null ? (col.width! * 10).toInt() : 1,
                  child: Text(
                    col.title.toUpperCase(),
                    style: const TextStyle(
                      color: SyncoraTheme.textSecondary,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: rows.length,
            separatorBuilder: (_, __) => const Divider(height: 1, color: SyncoraTheme.surfaceGlass),
            itemBuilder: (context, rowIndex) {
              final rowCells = rows[rowIndex];
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Row(
                  children: List.generate(columns.length, (colIndex) {
                    final cell = colIndex < rowCells.length ? rowCells[colIndex] : const SizedBox();
                    final col = columns[colIndex];
                    return Expanded(
                      flex: col.width != null ? (col.width! * 10).toInt() : 1,
                      child: cell,
                    );
                  }),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
