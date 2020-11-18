#!/bin/sh
clear
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
echo Remember, within Haskell to run :cd home .... :load elevator.lhs
/usr/local/bin/docker run -it --rm -v ~/Desktop/temp/haskell:/home haskell:8
