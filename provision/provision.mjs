#!/usr/bin/env zx

const extensions = [
  "Tyriar.sort-lines",
  "shd101wyy.markdown-preview-enhanced",
  "wmaurer.change-case", // quickly change case for constants
  "suming.react-proptypes-generate", // automatically generate proptypes
  "LinusU.auto-dark-mode", // automatically switch between light and dark themes
];

await Promise.all(
  extensions.map((extension) => {
    return $`code --install-extension ${extension} --force`;
  })
);

const packages = [
  "1password-cli",
  "1password",
  "adobe-digital-editions",
  "aws-vault",
  "awscli",
  "calibre",
  "coreutils",
  "datagrip",
  "docker",
  "ffmpeg",
  "firefox-nightly",
  "firefox",
  "gnu-sed",
  "google-chrome-canary",
  "google-chrome",
  "google-drive",
  "itsycal",
  "jabba",
  "mkcert",
  "mysides",
  "opera",
  "perimeter81",
  "plex-media-server",
  "rbenv",
  "rename",
  "slack-beta",
  "skitch",
  "speedtest-cli",
  "visual-studio-code-insiders",
  "visual-studio-code",
  "vlc",
  "watchman",
  "zoom",
  "ocrmypdf",
  "pdfsandwich",
];

// we could do this with a Brewfile too
await $`brew install ${packages}`;
await $`brew upgrade ${packages}`;

await $`
  mysides add desktop file://"$HOME"/desktop
  mysides add downloads file://"$HOME"/downloads
  mysides add dropbox file://"$HOME"/dropbox
  mysides add drive file://"$HOME"/drive
  mysides add dev file://"$HOME"/drive/dev`;

const yarnPackages = [
  "eslint",
  "eslint-plugin-sort-keys-fix",
  "eslint-plugin-import@latest",
  "eslint-plugin-jsx-a11y@latest",
  "eslint-plugin-prettier@latest",
  "eslint-plugin-react-hooks@latest",
  "eslint-plugin-react@latest",
  "eslint-plugin-sort-exports",
  "imagemin",
  "imagemin-pngquant",
  "imagemin-avif",
  "lighthouse",
  "webpack-bundle-analyzer",
  "@squoosh/cli",
  "psi",
  "prettier",
];

await $`yarn global add ${yarnPackages}`;
await $`yarn global upgrade ${yarnPackages} --latest`;

await $`
  open -gj -a itsycal`;

// curl -O https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg
// sudo installer -pkg pdftk_server-2.02-mac_osx-10.11-setup.pkg -target /

// todo automate brew info --installed --casks --json=v2 | grep skitch
// await $`spctl --add /Applications/Skitch.app /Applications/Slack.app`;
// await $`xattr -dr com.apple.quarantine /Applications/Slack.app`;

// Add screen capture permissions to J8RPQ294UB.com.skitch.SkitchHelper
// /Applications/Skitch.app/Contents/Library/LoginItems/J8RPQ294UB.com.skitch.SkitchHelper.app/Contents/MacOS
