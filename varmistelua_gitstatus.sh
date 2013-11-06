#!/bin/sh

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git status 
    cd $currdir
  fi
done

