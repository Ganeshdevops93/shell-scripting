#!/bin/bash

if [ "$USER" != "root" ]; then
  echo Hey, You are not a root user
fi

read -p 'Enter your Name: ' name

if [ -z "$name" ]; then
  echo Hey, You have not entered any input
else
  Hey $name, Welcome
fi
