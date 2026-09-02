module.exports = {
  forbidden: [
    {
      name: 'no-cross-module-imports',
      comment: 'Feature modules inside apps/api/src/modules must not import each other directly',
      severity: 'error',
      from: { path: '^apps/api/src/modules/([^/]+)' },
      to: {
        path: '^apps/api/src/modules/([^/]+)',
        pathNot: '^apps/api/src/modules/$1',
      },
    },
  ],
  options: {
    tsPreCompilationDeps: true,
    tsConfig: {
      fileName: 'apps/api/tsconfig.json',
    },
  },
};
