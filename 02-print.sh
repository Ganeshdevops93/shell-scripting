#!/bin/bash

# Printing can be done majorly with two commands. 1. printf 2. echo
# We learn echo command here, since it is user friendly..  Yet both does the same job.


echo Hello World
echo Welcome to DevOps

## When we try to print message and also if we try to grab the attention of the user then colors while printing does the job.

# By using ESC sequences in echo we can print colors
# \n - New line

## Note: When we use esc seq, Input to echo command should be given in double quotes (can single quotes also be used, but preferred is double quotes), Also esc seq works when you enable -e option to echo command.

echo -e "Hello,\n\nWelcome to DevOps Training"