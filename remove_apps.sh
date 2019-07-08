#!/bin/bash



heroku apps | while read -r line; do
  if [[ $line != *"supahands"* && $line != *"==="* ]] ; then
    # echo "Processing $line"
    IFS=' ' read -r -a array <<< "$line"
    echo "${array[0]}"
    # heroku apps:destroy "${array[0]}" -c "${array[0]}"
  fi
done