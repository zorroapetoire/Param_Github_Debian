#!/bin/bash

# Définition des couleurs
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
BOLD="\e[1m"
RESET="\e[0m"

echo -e "${BOLD}${BLUE}[*] Script d’installation et de configuration GitHub sur Kali Linux${RESET}"

# Vérifier si le script est exécuté avec sudo
if [[ $EUID -eq 0 ]]; then
    echo -e "${YELLOW}[!] Attention : Vous exécutez ce script en tant que root.${RESET}"
    NORMAL_USER=$(logname 2>/dev/null || echo $SUDO_USER)
    HOME_DIR=$(eval echo ~$NORMAL_USER)
else
    NORMAL_USER=$USER
    HOME_DIR=$HOME
fi

echo -e "${BOLD}${GREEN}[*] Utilisateur détecté : $NORMAL_USER${RESET}"
echo -e "${BOLD}${GREEN}[*] Dossier SSH : $HOME_DIR/.ssh/${RESET}"

# Installer Git si nécessaire
echo -e "${BLUE}[*] Mise à jour des dépôts et installation de Git...${RESET}"
apt update && apt install -y git

if command -v git >/dev/null 2>&1; then
    echo -e "${GREEN}[✓] Git installé avec succès. Version : $(git --version)${RESET}"
else
    echo -e "${RED}[!] Erreur : Git n’a pas pu être installé.${RESET}"
    exit 1
fi

# Configurer Git pour l'utilisateur normal
echo -e "${BLUE}[*] Configuration de GitHub...${RESET}"
read -p "Entrez votre nom d’utilisateur GitHub : " github_user
read -p "Entrez votre adresse e-mail associée à GitHub : " github_email

sudo -u "$NORMAL_USER" git config --global user.name "$github_user"
sudo -u "$NORMAL_USER" git config --global user.email "$github_email"

echo -e "${GREEN}[✓] Configuration Git enregistrée pour $NORMAL_USER :${RESET}"
sudo -u "$NORMAL_USER" git config --list | grep user

# Création du dossier .ssh si nécessaire
mkdir -p "$HOME_DIR/.ssh"
chmod 700 "$HOME_DIR/.ssh"

# Générer une clé SSH si elle n'existe pas déjà
if [ ! -f "$HOME_DIR/.ssh/id_rsa" ]; then
    echo -e "${BLUE}[*] Génération d’une clé SSH pour GitHub...${RESET}"
    sudo -u "$NORMAL_USER" ssh-keygen -t rsa -b 4096 -C "$github_email" -f "$HOME_DIR/.ssh/id_rsa" -N ""
    sudo -u "$NORMAL_USER" eval "$(ssh-agent -s)"
    sudo -u "$NORMAL_USER" ssh-add "$HOME_DIR/.ssh/id_rsa"
    echo -e "${GREEN}[✓] Clé SSH générée avec succès.${RESET}"
else
    echo -e "${YELLOW}[!] Une clé SSH existe déjà dans $HOME_DIR/.ssh/id_rsa.${RESET}"
fi

# Afficher la clé publique
echo -e "${BLUE}[*] Voici votre clé SSH publique :${RESET}"
cat "$HOME_DIR/.ssh/id_rsa.pub"
echo -e "${YELLOW}[!] Copiez-la et ajoutez-la à votre compte GitHub ici :${RESET}"
echo -e "${BOLD}🔗 https://github.com/settings/keys${RESET}"
echo -e "Appuyez sur Entrée une fois que vous avez ajouté la clé."
read -p ""

# Tester la connexion SSH
echo -e "${BLUE}[*] Test de la connexion SSH à GitHub...${RESET}"
sudo -u "$NORMAL_USER" ssh -T git@github.com

# Clonage d'un dépôt
echo -e "${BLUE}[*] Voulez-vous cloner un dépôt GitHub maintenant ? (o/n)${RESET}"
read clone_choice
if [ "$clone_choice" = "o" ] || [ "$clone_choice" = "O" ]; then
    read -p "Entrez l'URL du dépôt à cloner : " repo_url
    sudo -u "$NORMAL_USER" git clone "$repo_url"
    echo -e "${GREEN}[✓] Dépôt cloné avec succès.${RESET}"
else
    echo -e "${YELLOW}[!] Vous pourrez cloner un dépôt plus tard avec :${RESET}"
    echo -e "${BOLD}git clone <URL_DU_DEPOT>${RESET}"
fi

# Message de fin
echo -e "${GREEN}🎉 [✓] Configuration GitHub terminée !${RESET}"
echo -e "Pour commencer un projet :"
echo -e "${BOLD}mkdir mon-projet && cd mon-projet${RESET}"
echo -e "${BOLD}git init${RESET}"
echo -e "${BOLD}git remote add origin <URL_DU_DEPOT>${RESET}"
