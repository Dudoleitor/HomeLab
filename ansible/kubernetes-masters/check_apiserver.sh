#!/bin/bash

errorExit() {
  echo "*** $@" 1>&2
  exit 1
}

curl --silent --max-time 2 --insecure https://localhost:6443/ -o /dev/null || errorExit "Error GET https://localhost:6442/"
if ip addr | grep -q 10.40.10.20; then
  curl --silent --max-time 2 --insecure https://10.40.10.20:6442/ -o /dev/null || errorExit "Error GET https://10.40.10.20:6443/"
fi