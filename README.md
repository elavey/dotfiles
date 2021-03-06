# dotfiles

## Vim

### Windows Setup

Navigate to your $HOME path and clone the repository

    git clone git@github.com:josephvano/dotfiles.git
    cd dotfiles
    git submodule init
    git submodule update

Go to your vim installation path, mine is _c:/vim_ and create symbolic links to vimfiles and .vimrc

    cd c:/vim
    mklink /d vimfiles $HOME/dotfiles/vim/.vim
    mklink .vimrc $HOME/dotfiles/vim/.vimrc
    mklink .gvimrc $HOME/dotfiles/vim/.gvimrc

### Adding new plugin as submodule

This assumes you are using pathogen

    git submodule add git://[path] vim/.vim/bundle/[plugin]
    git submodule init
    git submodule update

### Plugin requirements

#### snipmate

I had to specify the path of the snippets folder in the .vimrc folder explicitly.

If you set it up in your $HOME folder, it should work out of the box.

    let g:snippets_dir = "$HOME/dotfiles/vim/.vim/bundle/snipmate/snippets"

#### Ack

I installed Perl on my machine and Ack

    cpan App::Ack

#### CoffeeScript
I have nodejs on my machine with npm (node package manager) and just installed CoffeeScript package

Grab latest nodejs at http://nodejs.org/ and it bundles the _npm_ with Windows installer

    npm install coffee-script

#### Sparkup

Couldn't get pathogen to detect and install plugin. I just had to do the manual way of copying _html_ folder to the _ftplugin_ folder.

Another caveat is I have python 2.5 on my machine. I tried it with Python 3.x and it was not working correctly.

### How I got there
1. Rename your **_vimrc** to **.vimrc**
2. Rename your **vimfiles** to **.vim**

Modern windows vim installation understands .vimrc vs _vimrc
