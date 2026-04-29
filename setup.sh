#!/bin/bash

mkdir -p ./data

ZIM_URL="https://download.kiwix.org/zim/wikipedia/$ZIM"

if [[ ! -f "./data/$ZIM" ]]; then
  sudo curl -L --progress-bar "$ZIM_URL" -o "./data/$ZIM"
fi

docker compose up -d
