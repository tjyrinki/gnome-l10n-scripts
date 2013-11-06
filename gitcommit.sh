#!/bin/bash

currdir=`pwd`

for dir in * ; do
  if [ -d $dir ] ; then 
    cd $dir
    echo Now in directory: $dir
    # Run gitupdate.sh instead before fetching translations!
    #git pull --rebase
    if [[ "$(git diff | wc -l)" == "0" ]] ; then
      echo No changes.
    else
      git status
      git diff
      echo 
      echo Commit $dir?
      echo 
      curbranch=$(git branch --no-color)
      echo Current branch:
      echo "$curbranch"
      echo 
      echo Will use the following commands:
      cat "$currdir/$0" | head -n 32 | tail -n 5
      echo 
      read text
      if [[ "$text" == "y" ]] ; then
        #git commit -a -m 'Finnish translation update from http://l10n.laxstrom.name/wiki/Gnome_3.4 translation sprint'
        #git commit --author="Jiri Grönroos <jiri.gronroos+l10n@iki.fi>" -a -m 'Finnish translation update'
        git commit --author="Lasse Liehu <lasse.liehu@gmail.com>" -a -m 'Finnish translation update'
        git pull --rebase
        git push
      fi
      echo 
      echo Press enter for next
      echo
      read text
    fi
    cd $currdir
  fi
done

