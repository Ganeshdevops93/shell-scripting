#!/bin/bash

if [ "$USER" != "root" ]; then
  echo Hey, You are not a root user
fi

read -p 'Enter your Name: ' name

if [ -z "$name" ]; then
  echo Variable a is empty
fi
