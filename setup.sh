#
# terminal
#
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

#
# git set up
#
git config --global core.excludesfile '~/.gitignore_global'
echo ".idea" ~/.gitignore_global
echo ".DS_Store" ~/.gitignore_global

git config --global user.name "qingemeng"
git config --global user.email "qingemeng@gmail.com"

# brew packages
#
brew install openssl
brew install thefuck
brew install tldr
brew install autojump
#
# brew cask
#
brew install --cask telegram
brew install --cask spotify
brew install --cask cleanmymac
brew install --cask slack
brew install --cask whatsapp
brew install --cask wechat
brew install --cask sourcetree
brew tap homebrew/science
brew install Caskroom/cask/xquartz
brew install --cask 1password
brew install --cask iterm2
brew install --cask rectangle
brew install --cask sublime-text
brew install openjdk@11

echo 'config zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source zsh/.zshrc

echo 'config vim'
brew update
mkdir ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source vimconfig/.vimrc
