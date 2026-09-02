const { execSync } = require('child_process');
const path = require('path');

console.log('🔄 Running Syncora Database Migrations...');
try {
  const databaseDir = path.join(__dirname, '../libs/database');
  execSync('npx prisma db push --schema=prisma/schema.prisma', {
    cwd: databaseDir,
    stdio: 'inherit',
    env: {
      ...process.env,
      DATABASE_URL: process.env.DATABASE_URL || 'postgresql://syncora_admin:syncora_secure_password@localhost:5432/syncora_platform_db?schema=public',
    },
  });
  console.log('✅ Database migrations successfully applied!');
} catch (error) {
  console.error('❌ Database migration failed:', error.message);
  process.exit(1);
}
