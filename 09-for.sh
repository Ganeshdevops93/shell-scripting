#!/bin/bash

for fruit in apple banana orange; do
  echo Fruit Name - $fruit
done

i=10
while [ $i -gt 0 ]; do
  echo "I = $i"
  i=$(($i-1))
done
