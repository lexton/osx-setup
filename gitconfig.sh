#!/bin/bash -ve

username=$1
email=$2

cat << EOF > ~/.gitconfig

[user]
  name = $username
  email = $email
[alias]
  serve = !git daemon --base-path=. --export-all -reuseaddr --informative-errors --verbose
  hub = !git daemon --base-path=. --export-all --enable=receive-pack --reuseaddr --informative-errors --verbose
  amend = commit -a --amend
  s = status -s
  co = checkout
  di = diff --cached HEAD^
  f = !git ls-files | grep -i
  grep = grep -Ii
  la = !git config -l grep alias | cut -c 7-
  lola = log --graph --decorate --pretty=oneline --abbrev-commit --all

EOF
