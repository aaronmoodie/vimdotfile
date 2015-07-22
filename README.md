# Vim Dot File

This is my vim dot file. There are many like it, but this one is mine. Feel free to use and modify it. There are a couple of requirements, which are detailed below.

Before that however, I'd recommend installing MacVim and using that instead of the system Vim installation. You'll get a current version of Vim (required for some plugins), and updating is very straight forward.

The simplest way to do this is with [homebrew](http://brew.sh/).

```bash
brew update
brew install macvim
```

After MacVim has successfully installed, open up your `.bashrc` file and create an alias pointing `vim` at MacVim binary.

```bash
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
```

## Requirements

#### Vundle
I use Vundle to manage all of my Vim plugins. Vundle is great, and you should use it too. Visit the [Vundle Github page](https://github.com/gmarik/Vundle.vim) for installation instructions.

#### The Silver Searcher
The Silver Search is a replacement for Grep which is lightning fast. You'll need to install The Silver Searcher so that searching in Vim functions correctly. Visit the [Github page](https://github.com/ggreer/the_silver_searcher) for installation instructions.

## Installation
After you have installed the requirements above, clone this repo to your home directory as a folder named `.vim`

```bash
cd ~/
git clone git@github.com:aaronmoodie/vimdotfile.git ./.vim
```

Now we'll need to create links to `.vim/vimrc` and `.vim/gvimrc` so that Vim and MacVim can find them.

```bash
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

The last thing you'll need to do is install the plugins. Open up Vim, and run the command `:PlunginInstall`. This should run Vundle and install all the plugins listed in the `.vim/vimrc` file.

You should now be good to go! the `.vim/vimrc` also lists the what the leader key is, and what shortcuts have been setup. Customize as needed.

Enjoy! 👍
