#!/bin/bash

echo 'Have you downloaded the peter-lavigne.json file and reset your keyboard?'
read -p '(y/n)' response

if [ $response = "y" ]; then
  qmk json2c -o /Users/peter.lavigne/qmk_firmware/keyboards/hotdox/keymaps/peter-lavigne/keymap.c ~/Downloads/peter-lavigne-keymap.json && qmk flash && mv ~/Downloads/peter-lavigne-keymap.json /Users/peter.lavigne/qmk_firmware/peter-lavigne-keymap.json
else
  echo "Exiting..."
fi

