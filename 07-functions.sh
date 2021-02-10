#!/bin/bash

## Declare a function

# Way1
sample() {
  echo Hello from sample function
}

#Way2
function sample1() {
  echo Hello from sample1 function
}

## Access the function
sample
sample1