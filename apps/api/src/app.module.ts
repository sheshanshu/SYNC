import { Module } from '@nestjs/common';
import { APP_GUARD, APP_INTERCEPTOR } from '@nestjs/core';
import { PrismaModule } from './core/database/prisma.module';
import { AuthModule } from './core/auth/auth.module';
import { TenantGuard } from './core/guards/tenant.guard';
import { PermissionsGuard } from './core/guards/permissions.guard';
import { TenancyInterceptor } from './core/interceptors/tenancy.interceptor';

import { AcademicModule } from './modules/academic/academic.module';
import { FinanceModule } from './modules/finance/finance.module';
import { SecurityModule } from './modules/security/security.module';
import { NotificationsModule } from './modules/notifications/notifications.module';
import { Controller, Get } from '@nestjs/common';

@Controller('health')
export class HealthController {
  @Get()
  checkHealth() {
    return {
      status: 'ok',
      service: 'Syncora Platform API',
      timestamp: new Date().toISOString(),
    };
  }
}

@Module({
  imports: [
    PrismaModule,
    AuthModule,
    AcademicModule,
    FinanceModule,
    SecurityModule,
    NotificationsModule,
  ],
  controllers: [HealthController],
  providers: [
    {
      provide: APP_GUARD,
      useClass: TenantGuard,
    },
    {
      provide: APP_GUARD,
      useClass: PermissionsGuard,
    },
    {
      provide: APP_INTERCEPTOR,
      useClass: TenancyInterceptor,
    },
  ],
})
export class AppModule {}
