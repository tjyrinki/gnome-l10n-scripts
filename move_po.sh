#!/bin/sh

for i in *.master.fi.po *.gnome-3-8.fi.po ; do
  dir=$(echo $i | cut -d '.' -f 1)
  mv -vf $i $dir/po/fi.po
done

echo 
echo Remaining non-moved .po files:
echo 

ls -l *.po 2> /dev/null

