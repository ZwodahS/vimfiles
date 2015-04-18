git submodule init && git submodule update
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
cp available_plugins plugins
