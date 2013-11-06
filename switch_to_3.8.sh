#!/bin/sh

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    git checkout -b gnome-3-8 origin/gnome-3-8
    git checkout gnome-3-8
    cd $currdir
  fi
done

