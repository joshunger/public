#!/usr/bin/env zx

const packages = [
  'awscli',
  'calibre',
  'coreutils',
  'ffmpeg',
  'firefox-nightly',
  'gnu-sed',
  'google-chrome-canary',
  'google-drive',
  'jabba',
  'mkcert', //
  'rbenv',
  'speedtest-cli',
  'watchman',
  'rename',
];

await $`brew upgrade ${packages}`;

// quickly change case for constants
await $`code --install-extension wmaurer.change-case --force`;

// automatically generate proptypes
await $`code --install-extension suming.react-proptypes-generate --force`;

// automatically switch between light and dark themes
await $`code --install-extension LinusU.auto-dark-mode --force`;

// just cause
await $`code --install-extension Tyriar.sort-lines --force`;
