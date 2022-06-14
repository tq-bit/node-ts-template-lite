#!/bin/bash

start_dev() {
  echo "Starting in dev mode ..."
  docker build -t app-name:latest .
  docker run --rm -it -p 8080:8080 --name app-name -v src:/app/src app-name:latest
}

start_prod() {
  echo "Starting in prod mode ..."
}

# Start the app in dev or prod mode
while getopts dph flag; do
  case "${flag}" in
  d)
    start_dev
    ;;
  p)
    start_prod
    ;;
  h)
    echo "Usage: $0 [-d] [-p]" >&2
    exit 1
    ;;
  *)
    echo "Unknown command. Use -h for help." >&2
  esac
done
