make distclean

export CPP_FLAGS="-DUSR_VIMRC_FILE=$XDG_CONFIG_HOME/vimrc -DUSR_EXRC_FILE=$XDG_CONFIG_HOME/exrc"

sh configure \
  --disable-acl                             \
  --disable-darwin                          \
  --disable-gpm                             \
  --disable-gtk2-check                      \
  --disable-gtktest                         \
  --disable-gui                             \
  --disable-largefile                       \
  --disable-netbeans                        \
  --disable-option-checking                 \
  --disable-selinux                         \
  --disable-sniff                           \
  --disable-sysmouse                        \
  --disable-workshop                        \
  --disable-xim                             \
  --disable-xsmp                            \
  --enable-fontset                          \
  --enable-multibyte                        \
  --enable-perlinterp                       \
  --enable-python3interp=yes                \
  --enable-pythoninterp=yes                 \
  --enable-rubyinterp=yes                   \
  --with-compiledby='Magnus Woldrich'       \
  --with-features=huge                      \
  --with-global-runtime=/home/scp1/etc/vim  \
  --with-vim-name=vi                        \
  --without-x && make && ./src/vi #&& su -c 'make install; unlink /usr/bin/vim; ln -s /usr/local/bin/vim /usr/bin/'
