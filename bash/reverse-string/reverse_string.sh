#!/usr/bin/env bash

STRING="$1"
LENGTH=${#1}

for ((i = $LENGTH - 1; i >= 0; i--))
do
  REVERSE="$REVERSE${STRING:$i:1}"
done

echo "$REVERSE"
