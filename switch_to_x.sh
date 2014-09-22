#!/bin/sh

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git checkout -b $1 origin/$1
    git checkout $1
    cd $currdir
  fi
done

