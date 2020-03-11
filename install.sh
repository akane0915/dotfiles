# #!/bin/zsh
# cp ~/dotfiles/.zshrc ~/.zshrc
# source ~/.zshrc

# Nicks approach
#!/usr/bin/env bash

echo "Installing dotfiles..."
cp -R ~/dotfiles/.bash_profile ~/.bash_profile
echo "Finished installing dotfiles"
source ~/.bash_profile
source ~/dotfiles/.bash_profile
