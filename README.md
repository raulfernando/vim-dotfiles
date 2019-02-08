# Vim

Clone the project with:
> git clone git@github.com:raulfernando/vim-dotfiles.git

After that, you shall create a symbolic link with:
> ln -s ~/.vim/.vimrc ~/.vimrc

Then, you can reload it:
> (:source ~/.vimrc) or restart Vim.

Now inside 'vim', press ESC and install the plugins with:
> :PlugInstall

Search:
  sudo apt install silversearcher-ag

Implements Ctags

  sudo apt install ctags

For each projetcs, access it and run:
  ctags -R .

And ignore the files
  echo tags >> .git/info/exclude

-NVIM

:help nvim-from-vim


To start the transition, create ~/.config/nvim/init.vim with these contents:
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc

And reexecute all again on nvim

# Utils

list git commits

sudo apt install tig

 > tig

To remove folder from fzf, run:

> export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

Thats is, enjoy your vim!

