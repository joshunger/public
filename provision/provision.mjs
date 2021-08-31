#!/usr/bin/env zx

const packages = [
  "awscli",
  "calibre",
  "coreutils",
  "ffmpeg",
  "firefox-nightly",
  "gnu-sed",
  "google-chrome-canary",
  "google-drive",
  "jabba",
  "mkcert",
  "rbenv",
  "speedtest-cli",
  "watchman",
  "rename",
];

await $`brew reinstall ${packages}`;
