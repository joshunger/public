#!/bin/bash
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ed25519 -C "joshunger1@gmail.com"
eval "$(ssh-agent -s)"
touch ~/.ssh/config
printf "
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
" > ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account