#!/bin/sh

currdir=`pwd`

echo Uncommitted changes.

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    if [ "$(git status -sb | grep ' M ')" != "" ] ; then
      echo Now in directory: $dir
      git status -sb
    fi
    cd $currdir
  fi
done

echo "Untracked files (new translations)."

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    if [ "$(git status -sb | grep '??')" != "" ] ; then
      echo Now in directory: $dir
      git status -sb
    fi
    cd $currdir
  fi
done

echo Unpushed repos.

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    if [ "$(git status -sb | grep ahead)" != "" ] ; then
      echo Now in directory: $dir
      git status -sb
    fi
    cd $currdir
  fi
done

