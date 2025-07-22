#!/bin/bash

echo "🔧 Installing Kali Boot Update Prompt..."

# Make sure ~/.local/bin exists
mkdir -p ~/.local/bin

# Copy script
cp update_prompt.sh ~/.local/bin/
chmod +x ~/.local/bin/update_prompt.sh

# Check if already added to .zshrc
if ! grep -q "update_prompt.sh" ~/.zshrc; then
  echo -e "\n# Auto update prompt (once per boot)" >> ~/.zshrc
  echo "if [ ! -f /tmp/update_prompt_done ]; then" >> ~/.zshrc
  echo "  ~/.local/bin/update_prompt.sh" >> ~/.zshrc
  echo "fi" >> ~/.zshrc
fi

echo "✅ Installed! Please run: source ~/.zshrc or restart your terminal."
