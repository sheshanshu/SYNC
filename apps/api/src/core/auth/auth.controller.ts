import { Controller, Post, Body, Get, Req, UseGuards, SetMetadata } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginDto } from '@syncora/dto';
import { AuthGuard } from '@nestjs/passport';
import { IS_PUBLIC_KEY } from '../guards/tenant.guard';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @SetMetadata(IS_PUBLIC_KEY, true)
  @Post('login')
  async login(@Body() dto: LoginDto) {
    return this.authService.login(dto);
  }

  @UseGuards(AuthGuard('jwt'))
  @Get('me')
  async getProfile(@Req() req: any) {
    return {
      success: true,
      user: req.user,
    };
  }
}
