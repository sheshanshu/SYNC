import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { LoginDto } from '@syncora/dto';
import { AuthTokens, UserContext } from '@syncora/types';

@Injectable()
export class AuthService {
  constructor(private readonly jwtService: JwtService) {}

  async login(dto: LoginDto): Promise<{ user: UserContext; tokens: AuthTokens }> {
    // Stub implementation for scaffold verification
    if (dto.email === 'admin@syncora.edu' || dto.email) {
      const user: UserContext = {
        userId: 'user_12345',
        email: dto.email,
        firstName: 'Demo',
        lastName: 'User',
        organizationId: 'org_syncora_default',
        roles: ['OrgAdmin'],
        permissions: ['read', 'write', 'manage'],
      };

      const payload = {
        sub: user.userId,
        email: user.email,
        organizationId: user.organizationId,
        roles: user.roles,
        permissions: user.permissions,
      };

      const accessToken = this.jwtService.sign(payload);
      const refreshToken = this.jwtService.sign(payload, { expiresIn: '7d' });

      return {
        user,
        tokens: {
          accessToken,
          refreshToken,
          expiresIn: 3600,
        },
      };
    }

    throw new UnauthorizedException('Invalid credentials');
  }
}
