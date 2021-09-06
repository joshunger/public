#!/usr/bin/env zx

const packages = [
  'awscli',
  'calibre',
  'coreutils',
  'datagrip',
  'ffmpeg',
  'firefox-nightly',
  'firefox',
  'gnu-sed',
  'google-chrome-canary',
  'google-chrome',
  'google-drive',
  'jabba',
  'mkcert',
  'rbenv',
  'rename',
  'speedtest-cli',
  'watchman',
  'mysides',
];

await $`brew install ${packages}`;
await $`brew upgrade ${packages}`;

// quickly change case for constants
await $`code --install-extension wmaurer.change-case --force`;

// automatically generate proptypes
await $`code --install-extension suming.react-proptypes-generate --force`;

// automatically switch between light and dark themes
await $`code --install-extension LinusU.auto-dark-mode --force`;

// just cause
await $`code --install-extension Tyriar.sort-lines --force`;

await $`
  mysides add desktop file://"$HOME"/desktop
  mysides add downloads file://"$HOME"/downloads
  mysides add dropbox file://"$HOME"/dropbox
  mysides add drive file://"$HOME"/drive
  mysides add dev file://"$HOME"/drive/dev`;
