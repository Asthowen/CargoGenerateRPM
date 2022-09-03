#!/bin/sh -l
set -eux

ln -s /root/.cargo $HOME/.cargo
ln -s /root/.rustup $HOME/.rustup

cd $GITHUB_WORKSPACE
sh -c "$*"
chmod 0777 ./target