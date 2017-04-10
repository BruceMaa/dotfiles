#!/bin/zsh
# site https://gist.github.com/Jamesits/9bc4adfb1f299380c79e

# Where to store your actual config files
export DOTFILES=~/Dropbox/dotfiles

# List unlinked dotfiles
dotfiles-count() {
        pushd >/dev/null 2>&1
        cd $HOME
        ls -ald .* | grep -v ^l | tee >(wc -l)
        popd >/dev/null 2>&1
}

# Move and link files named `.something*`
dotfiles-init() {
        pushd >/dev/null 2>&1
        cd $HOME
        ls -ald .$1*;
        mkdir -p $DOTFILES/$1;
        mv .$1* $DOTFILES/$1;
        stow --dir=$DOTFILES --target=$HOME -vv $1
        popd >/dev/null 2>&1
}

# rebuild links - useful when you are recovering settings to a new OS
# run `dotfiles-rebuild *` to rebuild all at once
dotfiles-rebuild() {
        stow --dir=$DOTFILES --target=$HOME -vv $@
}
