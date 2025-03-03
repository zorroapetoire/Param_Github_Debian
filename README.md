# Configuration de GitHub sur Debian et dérivés

Ce projet contient un script permettant d'installer et de configurer GitHub sur les distributions basées sur Debian (Debian, Ubuntu, Linux Mint, Kali Linux, etc.). Il guide les utilisateurs dans l'installation de Git, la configuration des informations utilisateur et la création d'une clé SSH pour sécuriser la connexion à GitHub.

---

## 📌 Prérequis

Avant d'exécuter ce script, assurez-vous de :

- Avoir une distribution Linux basée sur **Debian** (Debian, Ubuntu, Kali, etc.).
- Avoir un accès **administrateur** ou pouvoir utiliser la commande `sudo`.
- Disposer d'une **connexion Internet active**.

---

## 🛠️ Installation de Git

Si Git n'est pas installé sur votre système, commencez par l'installer :

```bash
sudo apt update && sudo apt install -y git
```

Pour vérifier si l'installation a réussi, exécutez :

```bash
git --version
```

Vous devriez voir un message affichant la version de Git installée.

---

## 📥 Téléchargement et exécution du script

Clonez ce dépôt ou téléchargez le fichier du script :

```bash
git clone https://github.com/zorroapetoire/Param_Github_Debian.git
cd Param_Github_Debian
```

Si vous ne pouvez pas utiliser `git clone`, téléchargez directement le fichier depuis [GitHub](https://github.com/zorroapetoire/Param_Github_Debian) et placez-le dans un dossier de votre choix.

Rendez le script exécutable :

```bash
chmod +x install_github.sh
```

Puis exécutez-le avec :

```bash
sudo ./install_github.sh
```

---

## 🔧 Ce que fait le script

1. **Vérification et installation de Git** (si absent).
2. **Demande des informations utilisateur** (nom d’utilisateur et e-mail GitHub).
3. **Configuration de Git avec ces informations**.
4. **Génération d’une clé SSH** si aucune n’est trouvée.
5. **Affichage de la clé publique** à ajouter sur GitHub.
6. **Test de connexion à GitHub** via SSH.
7. **Option de cloner un dépôt GitHub** après configuration.

---

## 🔑 Ajout de la clé SSH sur GitHub

Une fois le script exécuté, il affichera votre clé SSH publique. Vous devez :

1. Copier la clé affichée dans le terminal (`cat ~/.ssh/id_rsa.pub`).
2. Aller sur **GitHub** → [Paramètres SSH](https://github.com/settings/keys).
3. Ajouter une nouvelle clé SSH en collant la clé copiée.
4. Valider.

Pour tester si la clé fonctionne, utilisez la commande suivante :

```bash
ssh -T git@github.com
```

Si tout est configuré correctement, vous verrez un message confirmant que la connexion est établie.

---

## 🚀 Clonage d’un dépôt GitHub

Si vous souhaitez cloner un dépôt après configuration, utilisez :

```bash
git clone git@github.com:VOTRE_NOM_UTILISATEUR/NOM_DU_DEPOT.git
```

Remplacez `VOTRE_NOM_UTILISATEUR` et `NOM_DU_DEPOT` par les valeurs correspondantes.

---

## ❌ Dépannage

Si vous rencontrez des erreurs, voici quelques solutions possibles :

- **Git n’est pas installé** → Vérifiez avec `git --version`, puis installez-le si nécessaire.
- **Problème d’autorisations** → Essayez d’exécuter le script avec `sudo`.
- **Erreur de connexion SSH à GitHub** → Assurez-vous d’avoir ajouté la clé publique à GitHub.
- **Commande introuvable** → Vérifiez que vous êtes bien dans le bon dossier avec `cd Param_Github_Debian`.

---

## 📚 Ressources utiles

- [Documentation officielle de Git](https://git-scm.com/doc)
- [Tutoriel GitHub pour débutants](https://docs.github.com/fr/get-started)
- [Gestion des clés SSH avec GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

---

🎉 **Félicitations ! Vous êtes maintenant prêt à utiliser GitHub sur votre système Debian !**


