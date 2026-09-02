import { Controller, Get, Req } from '@nestjs/common';
import { AcademicService } from './academic.service';

@Controller('academic')
export class AcademicController {
  constructor(private readonly academicService: AcademicService) {}

  @Get('sessions')
  async getSessions(@Req() req: any) {
    const organizationId = req.organizationId;
    const data = await this.academicService.getSessions(organizationId);
    return {
      success: true,
      organizationId,
      data,
    };
  }
}
