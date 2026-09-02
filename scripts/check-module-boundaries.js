const fs = require('fs');
const path = require('path');

const modulesDir = path.join(__dirname, '../apps/api/src/modules');

function getAllFiles(dir, fileList = []) {
  if (!fs.existsSync(dir)) return fileList;
  const files = fs.readdirSync(dir);
  for (const file of files) {
    const filePath = path.join(dir, file);
    if (fs.statSync(filePath).isDirectory()) {
      getAllFiles(filePath, fileList);
    } else if (filePath.endsWith('.ts')) {
      fileList.push(filePath);
    }
  }
  return fileList;
}

console.log('🔍 Checking Syncora Module Boundary Rules...');
const files = getAllFiles(modulesDir);
let violations = [];

files.forEach((file) => {
  const relativePath = path.relative(modulesDir, file).replace(/\\/g, '/');
  const moduleName = relativePath.split('/')[0]; // e.g. "finance"
  const content = fs.readFileSync(file, 'utf8');

  const importRegex = /import\s+.*?from\s+['"](.*?)['"]/g;
  let match;
  while ((match = importRegex.exec(content)) !== null) {
    const importPath = match[1]; // e.g. "../academic/academic.service"
    if (importPath.includes('/modules/') || importPath.startsWith('../') || importPath.startsWith('./')) {
      const resolvedImport = path.normalize(path.join(path.dirname(file), importPath)).replace(/\\/g, '/');
      if (resolvedImport.includes('/apps/api/src/modules/')) {
        const targetModule = resolvedImport.split('/apps/api/src/modules/')[1].split('/')[0];
        if (targetModule && targetModule !== moduleName) {
          violations.push({
            file: relativePath,
            sourceModule: moduleName,
            targetModule: targetModule,
            importPath: importPath,
          });
        }
      }
    }
  }
});

if (violations.length > 0) {
  console.error('\n❌ MODULE BOUNDARY VIOLATION DETECTED!');
  console.error('Feature modules inside apps/api/src/modules must NEVER import each other directly.\n');
  violations.forEach((v) => {
    console.error(` - [${v.sourceModule}] ${v.file} imports directly from [${v.targetModule}] ("${v.importPath}")`);
  });
  console.error('\nFix: Route cross-module communication through core services or shared event bus.');
  process.exit(1);
} else {
  console.log('✅ Module boundary validation PASSED! Zero direct cross-module imports detected.');
  process.exit(0);
}
