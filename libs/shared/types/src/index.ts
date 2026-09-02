export interface TenantContext {
  organizationId: string;
  organizationSlug: string;
  domain?: string;
  enabledModules: string[];
}

export interface UserContext {
  userId: string;
  email: string;
  firstName: string;
  lastName: string;
  organizationId: string;
  roles: string[];
  permissions: string[];
}

export interface ApiResponse<T = any> {
  success: boolean;
  data?: T;
  message?: string;
  error?: string;
  statusCode: number;
  timestamp: string;
}

export interface AuthTokens {
  accessToken: string;
  refreshToken: string;
  expiresIn: number;
}

export interface OrganizationSummary {
  id: string;
  name: string;
  slug: string;
  domain?: string;
  logoUrl?: string;
  enabledModules: string[];
}

export interface AcademicSessionSummary {
  id: string;
  name: string;
  startDate: string;
  endDate: string;
  isCurrent: boolean;
  organizationId: string;
}

export interface FeeRecordSummary {
  id: string;
  amount: number;
  dueDate: string;
  status: 'PENDING' | 'PAID' | 'OVERDUE';
  userId: string;
  organizationId: string;
}

export interface GateLogSummary {
  id: string;
  visitorName: string;
  entryTime: string;
  exitTime?: string;
  status: 'CHECKED_IN' | 'CHECKED_OUT';
  organizationId: string;
}

export interface NotificationSummary {
  id: string;
  title: string;
  message: string;
  type: string;
  status: string;
  createdAt: string;
}
