#!/bin/bash

DOT_FILES=( .bashrc .bash_profile .vimrc .gitconfig .gitignore )

for file in ${DOT_FILES[@]}
do
  if [ -a $HOME/$file ]; then
    if [ -L $HOME/$file ]; then
      echo "既にシンボリックリンクが存在します！: $file"
    elif [ -d $HOME/$file ]; then
      echo "既にディレクトリが存在します！: $file"
    else
      echo "既にファイルが存在します！: $file"
    fi
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "シンボリックリンクを貼りました！: $file"
  fi
done

# gvimrc
GVIMRC_FILE=( gvimrc )

for vfile in ${GVIMRC_FILE[@]}
do
  if [ -a /Applications/MacVim.app/Contents/Resources/vim/$vfile ]; then
    rm -f /Applications/MacVim.app/Contents/Resources/vim/$vfile
    ln -s $HOME/dotfiles/$vfile /Applications/MacVim.app/Contents/Resources/vim/$vfile
    echo "$vfile のシンボリックリンク貼ったよ"
  else
    echo "gvimrcがないでござる"
  fi
done
