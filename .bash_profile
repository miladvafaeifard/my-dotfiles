#!/usr/bin/env bash

for file in ~/.{aliases,functions,private,sets,startup}
do
        [ -r $file ] && [ -f $file ] && source $file
done
unset file

# OH MY POSH THEME
export POSH_THEME=night-owl
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/$POSH_THEME.omp.json)"

# NVM RUN
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
