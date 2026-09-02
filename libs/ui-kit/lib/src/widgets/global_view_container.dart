import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

enum ViewState {
  content,
  loading,
  empty,
  error,
}

class GlobalViewContainer extends StatelessWidget {
  final ViewState state;
  final Widget child;
  final String? emptyTitle;
  final String? emptyMessage;
  final IconData? emptyIcon;
  final VoidCallback? onEmptyAction;
  final String? emptyActionText;
  final String? errorMessage;
  final VoidCallback? onErrorRetry;

  const GlobalViewContainer({
    super.key,
    required this.state,
    required this.child,
    this.emptyTitle,
    this.emptyMessage,
    this.emptyIcon,
    this.onEmptyAction,
    this.emptyActionText,
    this.errorMessage,
    this.onErrorRetry,
  });

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ViewState.loading:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(color: SyncoraTheme.primary),
              const SizedBox(height: 16),
              Text(
                'Loading Syncora Data...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        );
      case ViewState.empty:
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  emptyIcon ?? Icons.inbox_rounded,
                  size: 64,
                  color: SyncoraTheme.textMuted,
                ),
                const SizedBox(height: 16),
                Text(
                  emptyTitle ?? 'No Records Found',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  emptyMessage ?? 'There are currently no items to display in this view.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                if (onEmptyAction != null && emptyActionText != null) ...[
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: onEmptyAction,
                    icon: const Icon(Icons.add_rounded),
                    label: Text(emptyActionText!),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SyncoraTheme.primary,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      case ViewState.error:
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline_rounded,
                  size: 64,
                  color: SyncoraTheme.accentRose,
                ),
                const SizedBox(height: 16),
                Text(
                  'Failed to Load Data',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  errorMessage ?? 'An unexpected network error occurred.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                if (onErrorRetry != null) ...[
                  const SizedBox(height: 24),
                  OutlinedButton.icon(
                    onPressed: onErrorRetry,
                    icon: const Icon(Icons.refresh_rounded),
                    label: const Text('Retry Connection'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: SyncoraTheme.primary,
                      side: const BorderSide(color: SyncoraTheme.primary),
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      case ViewState.content:
        return child;
    }
  }
}
