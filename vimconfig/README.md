##Upgrade vim on Mac OS X

```shell
brew update
brew install vim --override-system-vi
source ~/.bash_profile
vim --version
which vim
```

##Install Vundle

Vundle is a vim plugin manager : https://github.com/gmarik/Vundle.vim

```
$ mkdir ~/.vim
$ mkdir ~/.vim/bundle
$ cd ~/.vim/bundle
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

##Setup .vimrc

Create a `~/.vimrc` file with the content of the other file in the gist.

##Install Plugins in vi

* Launch vi : `vi`
* Install plugins : `:PluginInstall`

##Dependencies for plugins

`npm install jshint -g`

https://iterm2.com/