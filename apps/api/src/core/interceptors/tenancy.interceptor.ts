import { Injectable, NestInterceptor, ExecutionContext, CallHandler } from '@nestjs/common';
import { Observable } from 'rxjs';

@Injectable()
export class TenancyInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    const request = context.switchToHttp().getRequest();
    const organizationId = request.organizationId || request.headers['x-tenant-id'];

    if (organizationId) {
      request.tenancyContext = {
        organizationId,
        timestamp: new Date().toISOString(),
      };
    }

    return next.handle();
  }
}
