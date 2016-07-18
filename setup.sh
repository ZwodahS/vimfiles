git submodule init && git submodule update

for FOLDER in .swp installed_plugins bundle autoload;
do
    if [ ! -e "${FOLDER}" ]; then
        mkdir ${FOLDER}
    fi
done

if [ ! -e venv2 ]; then
    virtualenv -p python venv2
fi
if [ ! -e venv3 ]; then
    virtualenv -p python venv3
fi

for PENV in venv2 venv3; do
    . ${PENV}/bin/activate
    pip install neovim jedi
done

pushd autoload
ln -s ../ext-repo/vim-plug/plug.vim .
popd

CONFIG_FDR="$HOME/.config"
mkdir -p "${CONFIG_FDR}"
ln -s vimrc init.vim
pushd ${CONFIG_FDR}
ln -s ~/.vim nvim
