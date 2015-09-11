#!/bin/sh

currdir=`pwd`

x=$1

echo Switching to: $x

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git checkout -b $x origin/$x
    git checkout $1
    cd $currdir
  fi
done

