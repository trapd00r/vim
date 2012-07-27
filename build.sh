#!/bin/zsh
# vim: ft=config ve=all:
#pmv src/wim-'[0-9]{6}' $HOME/bin/; rehash
# --with-tlib=termlib                      \
# --with-ruby-command=ruby-1.8                     \
# --with-global-runtime="${HOME}/dev/vim/runtime/" \
# feature.h suggest --with-x is needed for +clientserver.
# do investigate this (X is somehow used for the ipc but how is it done
# elsewhere?)

[[ $1 ]] && wake distclean

sh configure                                          \
   --enable-fontset                                   \
   --enable-multibyte                                 \
  --disable-acl                                       \
  --disable-darwin                                    \
  --disable-gpm                                       \
  --disable-gtk2-check                                \
  --disable-gtktest                                   \
  --disable-gui                                       \
  --disable-largefile                                 \
  --disable-netbeans                                  \
  --disable-nls                                       \
  --disable-nextawcheck                               \
  --disable-option-checking                           \
  --disable-selinux                                   \
  --disable-sniff                                     \
  --disable-sysmouse                                  \
  --disable-workshop                                  \
  --disable-xim                                       \
  --disable-xsmp                                      \
  --disable-perlinterp                                \
  --disable-python3interp                             \
  --disable-pythoninterp                              \
  --disable-option-checking                           \
  --disable-rubyinterp                                \
  --without-global-runtime                            \
  --without-gnome                                     \
  --without-gnome-includes                            \
  --without-gnome-libs                                \
  --without-local-dir                                 \
  --without-plthome                                   \
  --without-tclsh                                     \
     --with-features=huge                             \
     --with-ex-name=wex                               \
     --with-view-name=wiew                            \
     --with-compiledby="wolly - $(date)"              \
     --with-modified-by='Magnus Woldrich <m@japh.se>' \
     --with-vim-name="wim-$(date +%d%H%M)"            \
     --with-x                                         \
     "$@" && (wake || make)
