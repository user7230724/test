const cp = require('child_process');
const fd = process.stdout.fd;
cp.spawn('test.exe', [], {stdio: [null, fd, fd]});