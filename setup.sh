#!/bin/bash

LOCAL_DEV_FILE="$HOME/localdev/LocalDev.yaml"
if ! [ -f "$LOCAL_DEV_FILE" ]; then
  cp ~/localdev/LocalDev.example.yaml $LOCAL_DEV_FILE
  echo "Setup LocalDev.yaml File"
fi

function writeToFile() {
 FILE="$HOME/$1"

 if [ -f "$FILE" ]; then
    if ! grep -q "function vm" "$FILE"; then
      echo "
# Call \`vm {command}\` to run vagrant commands
function vm() {
  ( cd ~/localdev && vagrant \$* )
}
" >> "$FILE"
    fi

    if ! grep -q "alias vm" "$FILE"; then
      echo "
# Access the Virtual Box running your project
alias vm=\"ssh -t vagrant@127.0.0.1 -p 2222\"
" >> "$FILE"

    echo "Aliases added to $FILE";
    return 1;
    fi
  else
    return 0;
  fi
}

if writeToFile ".bashrc"; then
  if writeToFile ".zshrc"; then
    writeToFile ".bash_profile"
  fi
fi

echo ""
