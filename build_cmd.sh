
#sudo apt install git make clang libtool-bin libxt-dev libgtk-3-dev libpython3-dev
#sudo apt install lua5.3 liblua5.3-dev ruby-dev libperl-dev
./configure --prefix=/vim/install_dir_8_2_4827_docker \
    --with-features=huge \
    --enable-luainterp \
    --enable-perlinterp	\
    --enable-python3interp \
    --enable-rubyinterp	\
    --enable-cscope	
