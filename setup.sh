#!/bin/zsh

mkdir -p ~/.config

echo "Syncing system state with Brewfile..."
brew bundle --file=~/mac-setup/Brewfile
echo "Done!"

# Create symlinks
echo "Creating symlink for .zshrc ..."
ln -sf ~/mac-setup/zsh/.zshrc ~/.zshrc
echo "Done!"
echo "Creating symlink for starship.toml ..."
ln -sf ~/mac-setup/starship/starship.toml ~/.config/starship.toml
echo "Done!"
echo "Creating symlink for config.ghostty ..."
ln -sf ~/mac-setup/ghostty/config $HOME/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty
echo "Done!"
echo "Creating symlink for vscode settings.json ..."
ln -sf ~/mac-setup/vscode/settings.json $HOME/Library/Application\ Support/VSCodium/User/settings.json
echo "Done!"

# Install VSCode extensions
# Make sure to run 'Shell command: Install 'codium' command in PATH' in the editor GUI first
# See: https://github.com/VSCodium/vscodium/blob/master/docs/usage.md#how-do-i-open-vscodium-from-the-terminal
echo "Installing VSCode extensions"
cat ~/mac-setup/vscode/settings.json | xargs -L 1 codium --install-extension
