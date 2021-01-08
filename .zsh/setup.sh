#!/bin/env sh
git clone --bare $DOTFILES_REPO $HOME/.dotfiles

function dotfiles {
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

dotfiles checkout
dotfiles config status.showUntrackedFiles no
