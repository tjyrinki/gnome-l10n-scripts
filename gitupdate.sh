#!/bin/sh

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git reset --hard
    git pull --rebase &
    sleep 1
    #git clean -fxd
    cd $currdir
  fi
done

