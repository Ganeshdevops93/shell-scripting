#!/bin/bash

## Declare a function

# Way1
sample() {
  echo Hello from sample function
  echo a = $a
}

#Way2
function sample1() {
  echo Hello from sample1 function
}


## Main Program
## Access the function
a=10
sample
sample1
