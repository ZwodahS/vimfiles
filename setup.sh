git submodule init && git submodule update

if [ -z "${PLUGIN_MANAGER}" ]; then
    PLUGIN_MANAGER="vim-plug"
fi

if [ ! -e .swp ]; then
    mkdir .swp
fi
if [ ! -e vundle ]; then
    mkdir vundle
fi

if [ ! -e bundle ]; then
    mkdir bundle
fi

pushd bundle
if [ ! -e vundle -a "${PLUGIN_MANAGER}" == "vundle" ]; then
    ln -s ../ext-repo/vundle vundle
fi
popd

if [ "${PLUGIN_MANAGER}" == "vim-plug" ]; then
    pushd autoload
    ln -s ../ext-repo/vim-plug vim-plug/plug.vim .
    popd
fi

cd ..
cp available_plugins.vim installed_plugins.vim

CONFIG_FDR="$HOME/.config"
mkdir -p "${CONFIG_FDR}"
ln -s vimrc init.vim
pushd ${CONFIG_FDR}
ln -s ~/.vim nvim
