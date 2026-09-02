import { Injectable } from '@nestjs/common';
import { GateLogSummary } from '@syncora/types';

@Injectable()
export class SecurityService {
  async getGateLogs(organizationId: string): Promise<GateLogSummary[]> {
    return [
      {
        id: 'gate_log_001',
        visitorName: 'John Doe (Vendor)',
        entryTime: new Date().toISOString(),
        status: 'CHECKED_IN',
        organizationId,
      },
    ];
  }
}
