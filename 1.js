const cp = require('child_process');
const proc = cp.spawn('test.exe');
proc.stdout.pipe(process.stdout);
proc.stderr.pipe(process.stdout);