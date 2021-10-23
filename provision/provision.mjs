#!/usr/bin/env zx

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
  "hyper",
  "itsycal",
  "jabba",
  "mkcert",
  "mysides",
  "ocrmypdf", // pdf ocr
  "opera",
  "pdfsandwich", // pdf ocr
  "perimeter81",
  "plex-media-server",
  "rbenv",
  "rename",
  "skitch",
  "slack-beta",
  "speedtest-cli",
  "visual-studio-code-insiders",
  "visual-studio-code",
  "visual-studio",
  "vlc",
  "watchman",
  "wget",
  "zeplin",
  "zoom",
  "figma",
  "ngrok",
];

// we could do this with a Brewfile too
await $`brew install ${packages}`;
await $`brew upgrade ${packages}`;

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

await $`
  mysides add desktop file://"$HOME"/desktop
  mysides add downloads file://"$HOME"/downloads
  mysides add dropbox file://"$HOME"/dropbox
  mysides add drive file://"$HOME"/drive
  mysides add dev file://"$HOME"/drive/dev`;

const yarnPackages = [
  "@prettier/plugin-ruby",
  "@squoosh/cli",
  "eslint-plugin-import@latest",
  "eslint-plugin-jsx-a11y@latest",
  "eslint-plugin-prettier@latest",
  "eslint-plugin-react-hooks@latest",
  "eslint-plugin-react@latest",
  "eslint-plugin-sort-exports",
  "eslint-plugin-sort-keys-fix",
  "eslint",
  "imagemin-avif",
  "imagemin-pngquant",
  "imagemin",
  "lighthouse",
  "prettier-plugin-erb",
  "prettier",
  "psi",
  "webpack-bundle-analyzer",
  "jscodeshift",
];

await $`yarn global add ${yarnPackages}`;
await $`yarn global upgrade ${yarnPackages} --latest`;

await $`
  open -gj -a itsycal`;

// manual steps
// - Install FileZilla

// curl -O https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg
// sudo installer -pkg pdftk_server-2.02-mac_osx-10.11-setup.pkg -target /

// todo automate brew info --installed --casks --json=v2 | grep skitch
// await $`spctl --add /Applications/Skitch.app /Applications/Slack.app`;
// await $`xattr -dr com.apple.quarantine /Applications/Slack.app`;

// Add screen capture permissions to J8RPQ294UB.com.skitch.SkitchHelper
// /Applications/Skitch.app/Contents/Library/LoginItems/J8RPQ294UB.com.skitch.SkitchHelper.app/Contents/MacOS
