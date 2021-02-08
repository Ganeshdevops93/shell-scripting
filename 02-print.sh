#!/bin/bash

# Printing can be done majorly with two commands. 1. printf 2. echo
# We learn echo command here, since it is user friendly..  Yet both does the same job.


echo Hello World
echo Welcome to DevOps

## When we try to print message and also if we try to grab the attention of the user then colors while printing does the job.

# By using ESC sequences in echo we can print colors
# \n - New line
# \t - Tab space
# \e - New color

## Note: When we use esc seq, Input to echo command should be given in double quotes (can single quotes also be used, but preferred is double quotes), Also esc seq works when you enable -e option to echo command.

echo -e "Hello,\n\nWelcome to DevOps Training"

echo -e "Hello\t\t\tWorld"

## Syntax for colors
# echo -e "\e[COL-CODEmMESSAGE"


## Following are the COL-CODES

#   Color         COde
#   Red           31
#   Green         32
#   Yellow        33
#   Blue          34
#   Magenta       35
#   Cyan          36

echo -e "\e[31mWARNING!! THere is an error"

echo "Bye"

# Color enabling will not be disabled by default, When we enable color the it is needed to disable the color also.

# To disable color we have one more color code which is zero, like we have more

#   Code      Purpose
#   0         reset the color
#   1         Bold the text
#   4         Underline the text

# https://misc.flogisoft.com/bash/tip_colors_and_formatting

# Now we have to print a mesage with color and with properties like (bold, underline)

# echo -e "\e[PROP-COL-CODE;COL-CODEmMESSAGE"

# To disable the color which is enabled then

# echo -e "e\[COL-CODEmMESSAGE\e[0m"

echo -e "\e[0;31mWARNING!! THere is an error"

echo Bye