#!/usr/bin/env zsh

DOTFILES=$HOME/.dotfiles
DOTFILES_REPOS="https://github.com/naviapis/dotfiles.git"
DOTFILES_PRIVATE=$DOTFILES/private

dotfiles_init()
{
  git clone --recursive "$DOTFILES_REPOS" "$DOTFILES"
  vim "+:NeoBundleInstall" "+:q"
}

dotfiles_install()
{
  for f in $(find $DOTFILES -name ".*" -depth 1 -exec basename {} \; | egrep -v "^.git$|^.gitignore$|^.gitmodules$")
  do
    filename=$DOTFILES/$f
    destination=$HOME/$f

    if [ -e "$destination" ]; then
      mv -f "$destination" "$destination.bak" && echo -n "mv -f $destination $destination.bak && "
    fi
    ln -s "$filename" "$destination" && echo "ln -s $filename $destination"
  done
}

dotfiles_uninstall()
{
  find ~ -maxdepth 1 -type l -lname "$DOTFILES/*" -exec unlink {} \; -exec echo "unlink" {} \;
}

case "$1" in
  uninstall)
    dotfiles_uninstall
    ;;
  *)
    if [ -d "$DOTFILES" ]; then
      dotfiles_uninstall
    else
      dotfiles_init
    fi
    dotfiles_install
esac
