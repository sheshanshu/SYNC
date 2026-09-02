import { Controller, Get, Req } from '@nestjs/common';
import { FinanceService } from './finance.service';

@Controller('finance')
export class FinanceController {
  constructor(private readonly financeService: FinanceService) {}

  @Get('fees')
  async getFeeRecords(@Req() req: any) {
    const organizationId = req.organizationId;
    const data = await this.financeService.getFeeRecords(organizationId);
    return {
      success: true,
      organizationId,
      data,
    };
  }
}
