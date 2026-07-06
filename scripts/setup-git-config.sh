#!/bin/bash

echo "========================================"
echo "🚀 Git + SSH Multi-Account Setup"
echo "========================================"

# === User Input at the beginning ===
read -p "Enter your Personal Email: " personal_email
read -p "Enter your Office Email:  " office_email

read -p "Enter your Personal Name (e.g. John Doe): " personal_name
read -p "Enter your Office Name  (e.g. John Doe - Work): " office_name

echo -e "\n📁 Checking/Creating project folders..."

mkdir -p ~/devel/personal
mkdir -p ~/devel/office

echo "✅ Folders ready: ~/devel/personal and ~/devel/office"

# === Main global .gitconfig ===
cat > ~/.gitconfig << EOG
[user]
    name = Default User
    email = default@email.com

[includeIf "gitdir:~/devel/personal/"]
    path = ~/devel/personal/.gitconfig

[includeIf "gitdir:~/devel/office/"]
    path = ~/devel/office/.gitconfig

[init]
    defaultBranch = main

[core]
    editor = code --wait
EOG

# === Personal config (inside personal folder) ===
cat > ~/devel/personal/.gitconfig << EOP
[user]
    name = $personal_name
    email = $personal_email

[core]
    sshCommand = "ssh -i ~/.ssh/id_ed25519_personal"
EOP

# === Office config (inside office folder) ===
cat > ~/devel/office/.gitconfig << EOO
[user]
    name = $office_name
    email = $office_email

[core]
    sshCommand = "ssh -i ~/.ssh/id_ed25519_office"
EOO

# === SSH Keys ===
mkdir -p ~/.ssh
chmod 700 ~/.ssh

echo -e "\n🔑 Generating SSH keys..."

ssh-keygen -t ed25519 -C "$personal_email" -f ~/.ssh/id_ed25519_personal -N ""
ssh-keygen -t ed25519 -C "$office_email" -f ~/.ssh/id_ed25519_office -N ""

chmod 600 ~/.ssh/id_ed25519_personal ~/.ssh/id_ed25519_office
chmod 644 ~/.ssh/id_ed25519_personal.pub ~/.ssh/id_ed25519_office.pub

echo -e "\n🎉 Setup completed successfully!\n"

echo "=== Summary ==="
echo "• Global config       : ~/.gitconfig"
echo "• Personal config     : ~/devel/personal/.gitconfig"
echo "• Office config       : ~/devel/office/.gitconfig"
echo "• SSH Personal key    : ~/.ssh/id_ed25519_personal"
echo "• SSH Office key      : ~/.ssh/id_ed25519_office"
echo ""
echo "Next Steps:"
echo "1. Add public keys to GitHub:"
echo "   cat ~/.ssh/id_ed25519_personal.pub"
echo "   cat ~/.ssh/id_ed25519_office.pub"
echo ""
echo "2. Test it by creating a repo inside each folder."
