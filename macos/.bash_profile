#!/bin/bash

for file in ~/.{bash_prompt,bash_aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
