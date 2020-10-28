git submodule init && git submodule update

for FOLDER in .swp installed_plugins bundle autoload;
do
    if [ ! -e "${FOLDER}" ]; then
        mkdir ${FOLDER}
    fi
done

if [ ! -e venv3 ]; then
    virtualenv -p python3.7 venv3
fi

for PENV in venv3; do
    . ${PENV}/bin/activate
    pip install pynvim jedi msgpack
done

pushd autoload
if [ ! -e "plug.vim" ]; then
    ln -s ../ext-repo/vim-plug/plug.vim .
fi
popd

if [ ! -e "init.vim" ]; then
    ln -s vimrc init.vim
fi

CONFIG_FDR="$HOME/.config"
mkdir -p "${CONFIG_FDR}"
pushd ${CONFIG_FDR}
if [ ! -e "nvim" ]; then
    ln -s ~/.vim nvim
fi
