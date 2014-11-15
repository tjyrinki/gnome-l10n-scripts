#!/bin/sh

echo 
echo Docs:
echo

#for i in *-help.gnome-3-10.fi.po *-help.master.fi.po ; do
for i in *-help.master.fi.po ; do
  dir=$(echo $i | cut -d '.' -f 1 | sed 's/-help//')
  mv -vf $i $dir/help/fi/fi.po
done

echo
echo UI:
echo

for i in *.master.fi.po ; do
#for i in *.gnome-3-14.fi.po ; do
#for i in *.gimp-2-8.fi.po ; do
  dir=$(echo $i | cut -d '.' -f 1)
  mv -vf $i $dir/po/fi.po
done

echo 
echo Remaining non-moved .po files:
echo 

ls -l *.po 2> /dev/null

