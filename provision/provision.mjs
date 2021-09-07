#!/usr/bin/env zx

const packages = [
  '1password-cli',
  '1password',
  'adobe-digital-editions',
  'aws-vault',
  'awscli',
  'calibre',
  'coreutils',
  'datagrip',
  'docker',
  'ffmpeg',
  'firefox-nightly',
  'firefox',
  'gnu-sed',
  'google-chrome-canary',
  'google-chrome',
  'google-drive',
  'itsycal',
  'jabba',
  'mkcert',
  'mysides',
  'opera',
  'perimeter81',
  'plex-media-server',
  'rbenv',
  'rename',
  'slack-beta',
  'speedtest-cli',
  'visual-studio-code-insiders',
  'visual-studio-code',
  'vlc',
  'watchman',
];

// we could do this with a Brewfile too
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

const yarnPackages = [
  'eslint',
  'eslint-plugin-sort-keys-fix',
  'eslint-plugin-import@latest',
  'eslint-plugin-jsx-a11y@latest',
  'eslint-plugin-prettier@latest',
  'eslint-plugin-react-hooks@latest',
  'eslint-plugin-react@latest',
  'eslint-plugin-sort-exports',
  'imagemin',
  'imagemin-pngquant',
  'imagemin-avif',
  'lighthouse',
  'webpack-bundle-analyzer',
  '@squoosh/cli',
  'psi',
  'prettier'];

await $`yarn global add ${yarnPackages}`;
await $`yarn global upgrade ${yarnPackages} --latest`;
