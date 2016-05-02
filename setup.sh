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

mkdir -p ~/.ssh/.config
ln -s vimrc init.vim
pushd ~/.ssh/.config
ln -s ~/.vim nvim
