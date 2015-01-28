require('shelljs/global');
var fs = require('fs');
var gitUrl = 'git@github.com:';
var gitUpstreamUrl = gitUrl + 'helpdotcom';
var username;
var service;
var upstreamRepo;
var repo;
var repoUrl;
var repoCache = [];

if (!!process.argv[2]) {
  username = process.argv[2];
  gitUrl += username;
} else {
  throw new Error('your GitHub username is required as an argument');
}

var config = JSON.parse(fs.readFileSync('config.json', 'utf8'));

// start with adding the upstream for this repo
exec('git remote add upstream ' + gitUpstreamUrl + '/kaskade', function(code, output) {
  // carry on
});

for (service in config) {
  repo = config[service].dir.replace(/^..\//, '')
    .replace(/\/.*/, '');

  if (repoCache.indexOf(repo) >= 0) {
    continue;
  }
  repoCache.push(repo);

  upstreamRepo = gitUpstreamUrl + '/' + repo;
  repoUrl = gitUrl + '/' + repo;

  exec('cd .. && git clone ' + repoUrl + ' && cd ' + repo + ' && git remote add upstream ' + upstreamRepo + ' && git remote -v', function(code, output) {
    // carry on
  });
}
