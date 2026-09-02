import { IsEmail, IsNotEmpty, IsString, MinLength, IsOptional, IsNumber, IsBoolean } from 'class-validator';

export class LoginDto {
  @IsEmail()
  @IsNotEmpty()
  email!: string;

  @IsString()
  @MinLength(6)
  password!: string;

  @IsString()
  @IsNotEmpty()
  organizationSlug!: string;
}

export class CreateOrganizationDto {
  @IsString()
  @IsNotEmpty()
  name!: string;

  @IsString()
  @IsNotEmpty()
  slug!: string;

  @IsString()
  @IsOptional()
  domain?: string;
}

export class CreateAcademicSessionDto {
  @IsString()
  @IsNotEmpty()
  name!: string;

  @IsString()
  @IsNotEmpty()
  startDate!: string;

  @IsString()
  @IsNotEmpty()
  endDate!: string;

  @IsBoolean()
  @IsOptional()
  isCurrent?: boolean;
}

export class CreateFeeRecordDto {
  @IsNumber()
  amount!: number;

  @IsString()
  dueDate!: string;

  @IsString()
  userId!: string;
}

export class CreateGateLogDto {
  @IsString()
  @IsNotEmpty()
  visitorName!: string;
}

export class SendNotificationDto {
  @IsString()
  @IsNotEmpty()
  userId!: string;

  @IsString()
  @IsNotEmpty()
  title!: string;

  @IsString()
  @IsNotEmpty()
  message!: string;

  @IsString()
  @IsOptional()
  type?: string;
}
