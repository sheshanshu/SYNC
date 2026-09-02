import { Injectable } from '@nestjs/common';
import { NotificationSummary } from '@syncora/types';

@Injectable()
export class NotificationsService {
  async getNotifications(organizationId: string): Promise<NotificationSummary[]> {
    return [
      {
        id: 'notif_001',
        title: 'Academic Calendar Update',
        message: 'Mid-term evaluation schedules have been published.',
        type: 'INFO',
        status: 'UNREAD',
        createdAt: new Date().toISOString(),
      },
    ];
  }
}
