import { Injectable, UnauthorizedException } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { UserContext } from '@syncora/types';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor() {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: process.env.JWT_SECRET || 'syncora-secret-key-production-change-me',
    });
  }

  async validate(payload: any): Promise<UserContext> {
    if (!payload || !payload.sub || !payload.organizationId) {
      throw new UnauthorizedException('Invalid token payload or missing tenancy context');
    }
    return {
      userId: payload.sub,
      email: payload.email,
      firstName: payload.firstName || '',
      lastName: payload.lastName || '',
      organizationId: payload.organizationId,
      roles: payload.roles || ['Student'],
      permissions: payload.permissions || ['read'],
    };
  }
}
