import { Controller, Get, Req } from '@nestjs/common';
import { SecurityService } from './security.service';

@Controller('security')
export class SecurityController {
  constructor(private readonly securityService: SecurityService) {}

  @Get('logs')
  async getGateLogs(@Req() req: any) {
    const organizationId = req.organizationId;
    const data = await this.securityService.getGateLogs(organizationId);
    return {
      success: true,
      organizationId,
      data,
    };
  }
}
