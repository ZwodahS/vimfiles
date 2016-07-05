git submodule init && git submodule update

if [ -z "${PLUGIN_MANAGER}" ]; then
    PLUGIN_MANAGER="vim-plug"
fi

for FOLDER in .swp installed_plugins bundle autoload;
do
    if [ ! -e "${FOLDER}" ]; then
        mkdir ${FOLDER}
    fi
done

pushd bundle
if [ ! -e vundle -a "${PLUGIN_MANAGER}" == "vundle" ]; then
    ln -s ../ext-repo/vundle vundle
fi
popd

if [ "${PLUGIN_MANAGER}" == "vim-plug" ]; then
    pushd autoload
    ln -s ../ext-repo/vim-plug/plug.vim .
    popd
fi

CONFIG_FDR="$HOME/.config"
mkdir -p "${CONFIG_FDR}"
ln -s vimrc init.vim
pushd ${CONFIG_FDR}
ln -s ~/.vim nvim
