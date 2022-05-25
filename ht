#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

if [ "$#" -ne 1 ]; then
  echo "Illegal number of parameters"
  exit
fi

for i in {1..11..2}; do
  echo "$1" >/sys/devices/system/cpu/cpu"$i"/online
done
