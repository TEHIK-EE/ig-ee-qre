import fs from 'fs';

let cleanFsh = fs.readFileSync(
  './input/fsh/health-declaration/ee-health-declaration-questionnaire-example.fsh',
  'utf8'
);

// Remove only .text lines
cleanFsh = cleanFsh
  .replace(/^\s*\* .*\.text\s*=.*$/gm, '')
  .replace(/.*display.*/g, '');

// Ensure Instance name
cleanFsh = cleanFsh.match(/^\s*Instance:/m)
  ? cleanFsh.replace(/^\s*Instance:.*$/m, 'Instance: Questionnaire-health-declaration-upload')
  : 'Instance: Questionnaire-health-declaration-upload\n' + cleanFsh;

// Fix InstanceOf
cleanFsh = cleanFsh.replace(
  /^\s*InstanceOf:.*$/m,
  'InstanceOf: EEHealthDeclarationQuestionnaire'
);

// Usage
cleanFsh = cleanFsh.replace(/Usage: #example/, 'Usage: #definition');

// Insert * id after Usage: to guarantee FHIR id
if (!cleanFsh.match(/^\s*\* id\s*=/m)) {
  cleanFsh = cleanFsh.replace(
    /^Usage:.*$/m,
    match => `${match.trim()}\n* id = "Questionnaire-health-declaration"`
  );
} else {
  cleanFsh = cleanFsh.replace(
    /^\s*\* id\s*=.*$/m,
    '* id = "Questionnaire-health-declaration"'
  );
}

fs.writeFileSync(
  './input/fsh/health-declaration/generated-questionnaire-for-upload.fsh',
  cleanFsh.trim() + '\n'
);

