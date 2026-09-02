import { Injectable } from '@nestjs/common';
import { FeeRecordSummary } from '@syncora/types';

@Injectable()
export class FinanceService {
  async getFeeRecords(organizationId: string): Promise<FeeRecordSummary[]> {
    return [
      {
        id: 'fee_101',
        amount: 2500.0,
        dueDate: '2024-10-15',
        status: 'PENDING',
        userId: 'user_12345',
        organizationId,
      },
    ];
  }
}
