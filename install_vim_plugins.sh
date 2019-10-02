#! /usr/bin/env sh

for i in $(cat plugin_repos); do
  plugin_name=$(echo ${i} | sed 's/.*\/\([^/]*\)\.git/\1/')
  git submodule add ${i} vim/pack/plugins/start/${plugin_name}
done
