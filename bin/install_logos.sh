#!/usr/bin/env bash
# Copy logos from SimpleIcons repos to this project.
# It could be possible to use a submodule instead. It would only be used locally and as this is not for build time.

set -e

# Comments include the name on shields.io in case you use logo field there.
LOGOS=(
  ansible
  c
  circleci
  cmake
  css3
  dart
  deno
  docker
  eslint
  git
  github
  githubactions
  gnubash # gnu-bash
  go
  graphql
  html5
  java
  javascript
  jekyll
  kubernetes
  markdown
  mysql
  netlify
  nginx
  node-dot-js # node.js
  npm
  php
  postgresql
  python
  react
  ruby
  sqlite
  terraform
  typescript
  visualstudiocode
  vue-dot-js
  yarn
)

if [[ -d 'simple-icons' ]]; then
  cd simple-icons
  git pull
  cd ..
else
  git clone --depth 1 --single-branch -q \
    git@github.com:simple-icons/simple-icons.git
fi

for LOGO in ${LOGOS[@]}; do
  cp "simple-icons/icons/$LOGO.svg" _includes/logos
  sed -i '' \
    "s/path/path fill=\"currentColor\"/g" \
    "_includes/logos/$LOGO.svg"
done

echo 'If there were changes, you should commit them'