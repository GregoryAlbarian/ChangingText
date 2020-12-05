#!/bin/bash
mkdir project
cd project
mkdir {1..10}
ls . > ../contents.txt


# I learned on Stack Overflow how to read through
# an entire directory
while read directory; do
  cd $directory
  echo -e "hello\nworld\nto\nrandom\ntest" > stuff.txt
  cd ..
done <../contents.txt

