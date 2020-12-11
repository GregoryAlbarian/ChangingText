#!/bin/bash

count=1

cd ./project
while [ $count -le 500 ]; do
  cd ./$count
  last_digit=$[ $count % 10 ]

  if [ $last_digit == 1 ]
  then
    sed -i '4s/.*/"eat beets"/g' stuff.txt
  elif [ $last_digit == 4 ]
  then
    sed -i '4s/.*/"squash are great"/g' stuff.txt
  elif [ $last_digit == 5 ]
  then
    sed -i '4s/.*/"dogs are better than cats"/g' stuff.txt
  elif [ $last_digit == 7 ]
  then
    sed -i '4s/.*/"hello world"/g' stuff.txt
  elif [ $last_digit == 0 ]
  then
    sed -i '4s/.*//g' stuff.txt
  else
    sed -i '4s/.*/"welcome to file stuff.txt"/g' stuff.txt
  fi
  
  count=$[ $count + 1 ]
  cd ..
done
