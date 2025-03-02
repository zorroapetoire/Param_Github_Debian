# Param_Github_Linux
![Git](https://img.shields.io/badge/Git-Ready-green) ![Linux](https://img.shields.io/badge/Debian%20%26%20Kali-blue)  

**Un guide interactif pour débutants : Configurez GitHub et sauvegardez vos fichiers (facultatif) !**

Salut ! Vous débutez sous une distribution Linux comme Debian, Ubuntu, Linux Mint, Mx Linux, Kali ? 
Vous voulez apprendre à utiliser GitHub pour sauvegarder vos fichiers ou partager vos projets ? Ce dépôt est fait pour vous ! 
Avec un script simple et interactif, on vous guide pour :

- Installer Git.
- Configurer une connexion sécurisée à GitHub.
- (Facultatif) Sauvegarder vos fichiers dans un dépôt.

Pas de panique, c’est facile, amusant, et on explique tout étape par étape !

---

## 🌟 Qu’est-ce que ce dépôt ?

Ce projet est un coup de main pour les nouveaux utilisateurs de Linux qui veulent découvrir GitHub. 
Que vous soyez sur Debian, Kali, Ubuntu ou une autre distribution de la famille Debian, ce script vous prend par la main pour :

- Mettre en place Git, l’outil qui gère vos fichiers.
- Connecter votre PC à GitHub sans complications.
- (Si vous voulez) Envoyer vos fichiers en ligne pour ne jamais les perdre ou les partager avec le monde.

### Pourquoi l’utiliser ?
- **Débutant-friendly** : Pas de termes techniques compliqués, juste des instructions claires.
- **Interactif** : Le script vous pose des questions et vous guide.
- **Flexible** : Vous pouvez vous arrêter après la configuration ou aller jusqu’à sauvegarder vos fichiers.
- **Pratique** : Parfait pour sauvegarder vos scripts, notes ou projets perso !

---

## 📋 Prérequis

Avant de commencer, assurez-vous d’avoir :

- Un PC sous une distribution Linux (testé sur Debian, Kali, Ubuntu).
- Une connexion internet.
- Un compte GitHub ([créez-en un gratuitement ici](https://github.com) si vous n’en avez pas).

---

## 🎯 Comment ça marche ?

**Préambule** : Pour installer des outils comme Git, il faut des droits administrateurs. 
On utilise `sudo` pour ça, qui vous demandera votre mot de passe utilisateur. 
Ouvrez un terminal et suivez ces étapes :

### 1. Téléchargez le script
Récupérez ce dépôt depuis GitHub avec ces commandes :
```bash
git clone https://github.com/zorroapetoire/Param_Github_Linux.git  # Télécharge le dépôt sur votre PC
cd Param_Github_Linux  # 'cd' vous emmène dans le dossier téléchargé
```

### 2. Préparez et lancez le script
Donnez-lui les droits nécessaires et exécutez-le :
```bash
chmod +x setup_github_debian.sh  # 'chmod +x' permet au script de s’exécuter
sudo ./setup_github_debian.sh    # 'sudo' donne les droits admin, './' lance le script
```

### 3. Suivez les étapes proposées
Le script vous guidera pour :
- Installer Git (l’outil de base).
- Entrer votre nom et e-mail GitHub (pour vous identifier).
- Ajouter une clé SSH (une sorte de mot de passe sécurisé).
- (Optionnel) Sauvegarder vos fichiers si vous le souhaitez.

---

## 🖼️ À quoi ça ressemble ?

Voici un petit aperçu de ce que vous verrez dans votre terminal :

```
Bienvenue dans ce script interactif !
On va installer Git, configurer GitHub, et si vous voulez, sauvegarder vos fichiers en ligne.
Note : Ce script utilise 'sudo' pour installer Git, il vous demandera votre mot de passe.

[Étape 1] Installation de Git...
✅ Git est installé ! Version : git version 2.39.2

[Étape 2] Configurons votre identité Git...
Entrez votre nom d’utilisateur GitHub (ex. : jean123) :

[Étape 5 - Optionnelle] Voulez-vous sauvegarder des fichiers sur GitHub maintenant ?
Choix (o/n) :
```

Chaque étape est marquée par un ✅ quand elle réussit ou un ❌ si quelque chose bloque, avec des explications pour corriger.

---

## 💡 Conseils pour débutants

- **Pas prêt à sauvegarder ?** Dites "n" à l’étape 5, vous pourrez le faire plus tard.
- **Dépôt public ou privé ?** Si vous choisissez de sauvegarder, un dépôt "public" permet à tous de voir vos fichiers, un "privé" les garde pour vous seul.
- **Mot de passe sudo** : Si on vous le demande, c’est normal ! C’est le mot de passe de votre session Linux.
- **Perdu ?** Les messages du script vous diront quoi faire en cas de pépin.

### Exemple concret
Imaginons que vous avez créé un fichier `mon_script.sh` dans `/home/user/mes-trucs`. À l’étape 5 :
- Dites "o" pour oui.
- Entrez `/home/user/mes-trucs` comme chemin.
- Choisissez `mes-trucs` comme nom de dépôt.
- Une fois fini, vos fichiers seront sur `https://github.com/votre-nom/mes-trucs` !

---

## ❓ FAQ (Questions fréquentes)

- **GitHub, c’est quoi ?**  
  Une plateforme en ligne pour stocker, partager et collaborer sur des fichiers (code, textes, etc.). Comme un Google Drive, mais pour les geeks !

- **Pourquoi une clé SSH ?**  
  C’est une façon sécurisée de connecter votre PC à GitHub sans taper de mot de passe à chaque fois.

---

## 🤝 Comment contribuer ?

Vous avez une suggestion pour rendre ce guide encore plus clair ou utile ?  
- **Ouvrez une issue** : Dites-nous ce qui manque ou ce qui coince.
- **Proposez un changement** : Modifiez le script ou ce README et envoyez une pull request !

---

## 📜 Licence

[MIT](LICENSE) - Ce projet est libre et gratuit. Utilisez-le, modifiez-le, partagez-le !

---

**Créé par zorroapetoire pour vous, les nouveaux aventuriers de GitHub sous Linux !**  
N’hésitez pas à tester, apprendre, et explorer. À vos terminaux ! 🚀

```
