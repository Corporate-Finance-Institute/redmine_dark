#!/usr/bin/env sh
set -eu

test -f stylesheets/application.css
test -f LICENSE
test -f NOTICE.md

test ! -e init.rb
test ! -d lib
test ! -d assets

grep -Fq '@import url(/themes/cfi/application.css);' stylesheets/application.css
grep -Fq 'filter: invert(90%);' stylesheets/application.css

if grep -Eq 'body\.dark|html\.dark|prefers-color-scheme|dark\.js|Redmine::Plugin' stylesheets/application.css README.md; then
  echo "plugin/toggle behavior remains in the native theme" >&2
  exit 1
fi

echo "THEME_STRUCTURE_OK"
