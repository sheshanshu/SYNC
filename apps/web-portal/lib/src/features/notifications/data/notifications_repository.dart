import '../domain/notification_item.dart';

abstract class NotificationsRepository {
  Future<List<NotificationItem>> getNotifications();
}

class MockNotificationsRepository implements NotificationsRepository {
  @override
  Future<List<NotificationItem>> getNotifications() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      NotificationItem(
        id: 'NOTIF-101',
        title: 'Academic Calendar Update',
        message: 'Mid-term evaluation schedules have been published.',
        type: 'INFO',
        timestamp: '10 mins ago',
        isRead: false,
      ),
      NotificationItem(
        id: 'NOTIF-102',
        title: 'Fee Payment Received',
        message: 'Receipt #INV-2024-001 has been confirmed.',
        type: 'SUCCESS',
        timestamp: '1 hour ago',
        isRead: true,
      ),
      NotificationItem(
        id: 'NOTIF-103',
        title: 'Urgent Campus Security Alert',
        message: 'Gate #2 maintenance scheduled for 18:00 hrs.',
        type: 'URGENT',
        timestamp: '3 hours ago',
        isRead: false,
      ),
    ];
  }
}
