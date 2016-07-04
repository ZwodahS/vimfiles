git submodule init && git submodule update
if [ ! -e .swp ]; then
    mkdir .swp
fi
if [ ! -e vundle ]; then
    mkdir vundle
fi

if [ ! -e bundle ]; then
    mkdir bundle
fi
cd bundle
if [ ! -e vundle ]; then
    ln -s ../ext-repo/vundle vundle
fi
cd ..
cp available_plugins.vim installed_plugins.vim

CONFIG_FDR="~/.config"
mkdir -p ${CONFIG_FDR}
ln -s vimrc init.vim
pushd ${CONFIG_FDR}
ln -s ~/.vim nvim
