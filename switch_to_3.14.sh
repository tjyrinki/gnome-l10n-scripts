#!/bin/sh

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git checkout -b gnome-3-14 origin/gnome-3-14
    git checkout gnome-3-14
    cd $currdir
  fi
done

