#!/usr/bin/env zx

// const brewInfo = require('./brew-info.json');

const {stdout} = await $`brew info --installed --casks --json=v2`;

const info = JSON.parse(stdout);

info.casks.forEach(function(cask) {
  cask.artifacts.forEach((artifact) => {
    // console.log('-', artifact );
    if (Array.isArray(artifact) && artifact[0].endsWith('.app')) {
      console.log(artifact[0]);
    }
  });
});
