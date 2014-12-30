require('shelljs/global');
var fs = require('fs');
var gitUrl = 'git@github.com:';
var username;
var service;
var repo;
var repoCache = [];

if (!!process.argv[2]) {
  username = process.argv[2];
  gitUrl += username;
} else {
  throw new Error('your GitHub username is required as an argument');
}

var config = JSON.parse(fs.readFileSync('config.json', 'utf8'));

for (service in config) {
  repo = config[service].dir.replace(/^..\//, '')
    .replace(/\/.*/, '');

  if (repoCache.indexOf(repo) >= 0) {
    continue;
  }
  repoCache.push(repo);

  repo = gitUrl + '/' + repo;

  exec('cd .. && git clone ' + repo, function(code, output) {
    // carry on
  });
}