#!/bin/bash

echo 'Have you downloaded the peter-lavigne.json file and reset your keyboard?'
read -p '(y/n)' response

if [ $response = "y" ]; then
  cd /Users/peter.lavigne/qmk_firmware
  qmk json2c -o keyboards/hotdox/keymaps/peter-lavigne/keymap.c ~/Downloads/peter-lavigne-keymap.json
  qmk flash
  mv ~/Downloads/peter-lavigne-keymap.json peter-lavigne-keymap.json
  git add -A
  git commit -m "update keyboard"
  git push
else
  echo "Exiting..."
fi

