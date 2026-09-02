import { Controller, Get, Req } from '@nestjs/common';
import { NotificationsService } from './notifications.service';

@Controller('notifications')
export class NotificationsController {
  constructor(private readonly notificationsService: NotificationsService) {}

  @Get()
  async getNotifications(@Req() req: any) {
    const organizationId = req.organizationId;
    const data = await this.notificationsService.getNotifications(organizationId);
    return {
      success: true,
      organizationId,
      data,
    };
  }
}
