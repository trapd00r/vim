#!/bin/sh
[[ $1 ]] && make distclean

sh configure \
  --disable-acl                                    \
  --disable-darwin                                 \
  --disable-gpm                                    \
  --disable-gtk2-check                             \
  --disable-gtktest                                \
  --disable-gui                                    \
  --disable-largefile                              \
  --disable-netbeans                               \
  --disable-option-checking                        \
  --disable-selinux                                \
  --disable-sniff                                  \
  --disable-sysmouse                               \
  --disable-workshop                               \
  --disable-xim                                    \
  --disable-xsmp                                   \
  --enable-fontset                                 \
  --enable-multibyte                               \
  --disable-perlinterp                             \
  --disable-python3interp                          \
  --disable-pythoninterp                           \
  --disable-rubyinterp                             \
  --disable-option-checking                        \
  --with-compiledby="wolly - $(date)"              \
  --with-features=huge                             \
  --with-vim-name="wim-$(date +%d%H%M)"            \
  --with-global-runtime="${HOME}/dev/vim/runtime/" \
  --without-x && /usr/bin/make
