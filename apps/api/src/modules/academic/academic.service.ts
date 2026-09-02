import { Injectable } from '@nestjs/common';
import { AcademicSessionSummary } from '@syncora/types';

@Injectable()
export class AcademicService {
  async getSessions(organizationId: string): Promise<AcademicSessionSummary[]> {
    return [
      {
        id: 'session_fall_2024',
        name: 'Fall 2024 Academic Session',
        startDate: '2024-09-01',
        endDate: '2024-12-20',
        isCurrent: true,
        organizationId,
      },
      {
        id: 'session_spring_2025',
        name: 'Spring 2025 Academic Session',
        startDate: '2025-01-15',
        endDate: '2025-05-15',
        isCurrent: false,
        organizationId,
      },
    ];
  }
}
