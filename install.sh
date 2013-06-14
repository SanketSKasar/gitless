#!/bin/bash
# Creates symlinks to the python files in /usr/bin. After running the install
# script you can execute the commands by just typing "gl-track", "gl-untrack"
# and so on in your shell. You only need to execute this script once.

# You'll need to edit this array if you add/remove commands.
cmds=("track" "untrack" "status" "diff" "commit" "branch" "reset")

dir=$(pwd)

for cmd in ${cmds[@]}; do
  sudo rm "/usr/bin/gl-${cmd}"
  sudo ln -s "${dir}/gl_${cmd}.py" "/usr/bin/gl-${cmd}"
done