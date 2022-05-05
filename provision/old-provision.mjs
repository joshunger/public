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
  'figma',
  'firefox-nightly',
  'firefox',
  'gnu-sed',
  'google-chrome-canary',
  'google-chrome',
  'google-drive',
  'hyper',
  'itsycal',
  'jabba',
  'mkcert',
  'mysql',
  'ngrok',
  'ocrmypdf', // pdf ocr
  'opera',
  'pdfsandwich', // pdf ocr
  'perimeter81',
  'plex-media-server',
  'rbenv',
  'rename',
  'skitch',
  'slack-beta',
  'speedtest-cli',
  'spotify',
  'tor-browser',
  'visual-studio-code-insiders',
  'visual-studio-code',
  'visual-studio',
  'vlc',
  'watchman',
  'wget',
  'zeplin',
  'zoom',
]

// we could do this with a Brewfile too
await $`brew install ${packages}`
await $`brew upgrade ${packages}`

const caskPackagers = ['flux']

// we could do this with a Brewfile too
await $`brew install --cask ${caskPackagers}`
await $`brew upgrade --cask ${caskPackagers}`

// open flux

await $`
  open -gj -a itsycal`

// manual steps
// - pdftk
// - Install FileZilla
// -     "editor.codeActionsOnSave": {
//   "source.fixAll": true
// }
// - Enable secondary click

// curl -O https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg
// sudo installer -pkg pdftk_server-2.02-mac_osx-10.11-setup.pkg -target /

// todo automate brew info --installed --casks --json=v2 | grep skitch
// await $`spctl --add /Applications/Skitch.app /Applications/Slack.app`;
// await $`xattr -dr com.apple.quarantine /Applications/Slack.app`;

// Add screen capture permissions to J8RPQ294UB.com.skitch.SkitchHelper
// /Applications/Skitch.app/Contents/Library/LoginItems/J8RPQ294UB.com.skitch.SkitchHelper.app/Contents/MacOS
