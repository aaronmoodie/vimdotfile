# Vim Dot File

This is my vim dot file. There are many like it, but this one is mine. There are a couple of additional requirements, which are included as part of the instructions below.

## Requirements

You will need to ensure that your version of Vim is at least 7.3.584 and that it has support for python2 scripting. The best way to do this is by following the YouCompleteMe  [installation
instructions](https://github.com/Valloric/YouCompleteMe#full-installation-guide).

If you're installing on a Mac, the simplest way to do this is by installing MacVim with [homebrew](http://brew.sh/). You'll also need to install Python as well if you don't already have it. 

```
brew update
brew install python
brew install macvim
```

After MacVim has successfully installed, open up your `.bashrc` file and create an alias pointing `vim` at MacVim binary. You'll need to add in the correct verion number for your install of Vim. 

```
alias vim='/usr/local/Cellar/macvim/{version number}/MacVim.app/Contents/MacOS/Vim'
```


## Installation

#### 1. Clone Repo

After you have your Vim installation sorted, clone this repo to your home directory as a folder named `.vim`

```
cd ~/ git clone git@github.com:aaronmoodie/vimdotfile.git ./.vim
```

Now we'll need to create links to `.vim/vimrc` and `.vim/gvimrc` so that Vim and MacVim can find them.

```
ln -s ~/.vim/vimrc ~/.vimrc 
ln -s ~/.vim/gvimrc ~/.gvimrc
```

#### 2. Install Plugins

[Vundle](https://github.com/VundleVim/Vundle.vim) is used to manage plugin installation and removal. To install all the plugins as part of this dot file, first install Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Then launch Vim and run the command `:PlunginInstall`. To install from command line: `vim +PluginInstall +qall`

#### 3. Compile YouCompleteMe

YouCompleteMe is an amazing auto complete plugin, and requires an additional step for installation. 

I've set my environemnt up for C languages and Javascript, but you can follow the *compiling instructions* on the YouCompleteMe [Github
page](https://github.com/Valloric/YouCompleteMe#installation) for your specific environment.

```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer
```

#### 4. Install TheSilverSearcher

The Silver Search's `ag` command is a speedy replacement for `grep` when for searching files. Visit the Github page for [installation instructions](https://github.com/ggreer/the_silver_searcher#installing) for your specific environment. If you're on Mac, you can easily install this with homebrew.

```
brew install the_silver_searcher
```

Here is some [further reading](https://robots.thoughtbot.com/faster-grepping-in-vim) on what Ag is and how it makes you life easier. All these shorcuts have been implimented.

#### 5. Done!

You should now be good to go! The `.vim/vimrc` also lists the what the leader key is, and what shortcuts have been setup. Customize as needed.

Enjoy! 👍
