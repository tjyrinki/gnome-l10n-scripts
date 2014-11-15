if [ "$1" != "" ] ; then
  for i in $* ; do
  ./checkout.sh $i
  done
else
  for i in balsa dasher dia drwright eog-plugins gedit-plugins ghex gimp-tiny-fu gnome-applets gnome-commander gnome-panel gnome-search-tool gnome-subtitles gnumeric goffice gthumb gtkhtml gtranslator meld metacity pitivi regexxer tomboy xchat-gnome ;  do
    ./checkout.sh $i
  done
fi
