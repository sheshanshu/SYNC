import { CanActivate, ExecutionContext, Injectable, BadRequestException } from '@nestjs/common';
import { Reflector } from '@nestjs/core';

export const IS_PUBLIC_KEY = 'isPublic';

@Injectable()
export class TenantGuard implements CanActivate {
  constructor(private reflector: Reflector) {}

  canActivate(context: ExecutionContext): boolean {
    const isPublic = this.reflector.getAllAndOverride<boolean>(IS_PUBLIC_KEY, [
      context.getHandler(),
      context.getClass(),
    ]);

    const request = context.switchToHttp().getRequest();
    const headers = request.headers || {};
    
    // Extract tenant ID from header or user context
    const tenantHeader = headers['x-tenant-id'] || headers['x-organization-id'];
    const userTenantId = request.user?.organizationId;
    const organizationId = tenantHeader || userTenantId;

    if (!organizationId && !isPublic) {
      throw new BadRequestException(
        'Tenancy Isolation Violation: Missing resolved tenant context (x-tenant-id header or valid auth organizationId).',
      );
    }

    // Attach tenant context to request for downstream services & interceptors
    request.organizationId = organizationId;
    return true;
  }
}
