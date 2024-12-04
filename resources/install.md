# Mise en place environnement Flutter

Voici les étapes pour mettre en place un environnement Flutter (sur Windows).

## 1. Télécharger et installer Flutter

1. **Télécharger Flutter**

   - Rendez-vous sur le site officiel : [Flutter SDK](https://docs.flutter.dev/get-started/install/windows/mobile#download-then-install-flutter).
   - Téléchargez le fichier ZIP pour Windows.

2. **Extraire le SDK Flutter**

   - Extrayez le contenu du fichier ZIP dans un dossier (`C:\src\flutter`).

3. **Ajouter Flutter au PATH**

   - Accédez à "Paramètres système avancés" → Onglet "Avancé" → "Variables d'environnement".
   - Dans les variables utilisateur ou système, ajoutez le chemin du dossier `bin` de Flutter (`C:\src\flutter\bin`) au **PATH**.

---

## 2. Installer les outils nécessaires

1. **Installer Git**

   - Téléchargez et installez [Git](https://git-scm.com/downloads/guis?os=windows).
   - Pendant l'installation, choisissez "Git from the command line and also from 3rd-party software" pour l'utiliser avec Flutter.
   - Exécuter ces deux commande pour configurer votre Git et le synchroniser avec votre compte GitHub ou GitLab : `git config --global user.email  "votre_email@exemple.com"` & `git config --global user.name "nomutilisateur"`

2. **Installer VS Code**

   - Téléchargez et installez [Visual Studio Code](https://code.visualstudio.com).
   - Installez les extensions Flutter et Dart dans Visual Studio Code si vous l’utilisez.

---

## 3. Configurer Android Studio

1. **Installer Android Studio**

   - Téléchargez et installez [Android Studio](https://developer.android.com/studio).

2. **Installer le SDK Android**

   - Ouvrez Android Studio, allez dans "More Actions" → "SDK Manager".
   - Si ce n'est le cas, installez **SDK Android**, **Android SDK command-line Tools**, **Android Emulator**, **Intel x86 Emulator Accelerator (HAXM installer)** et les outils requis (versions recommandées dans la documentation Flutter).

3. **Configurer un émulateur**

   - Dans Android Studio, allez dans "More Actions" → "Virtual Device Manager" → "Create Device".
   - Configurez un émulateur avec une image système (par exemple, Pixel 4 avec Android 12).

4. **Accepter la License d'Android**

   - Avec la commande `flutter doctor --android-licences` accepter la license d'Android dans votre installation.

---

## 4. Vérifier l’installation avec Flutter Doctor

1. Ouvrez un terminal (cmd ou PowerShell) et exécutez :

   ```bash
   flutter doctor
   ```

   Cette commande vérifie votre environnement et liste les éléments manquants.

2. Si des éléments sont signalés comme manquants, suivez les recommandations affichées.

---

## 5. Testez votre installation

1. Créez un nouveau projet Flutter :

   ```bash
   flutter create mon_projet
   ```

2. Accédez au répertoire du projet :

   ```bash
   cd mon_projet
   ```

3. Exécutez le projet sur un émulateur ou un appareil connecté :

   ```bash
   flutter run
   ```

---

## 6. Conseils supplémentaires

- **Activer le mode développeur sur un appareil Android**

  - Connectez un appareil Android à votre PC.
  - Activez le mode développeur et débogage USB dans les paramètres de l’appareil.

- **Mise à jour régulière de Flutter**

  - Assurez-vous d'avoir la dernière version en exécutant :

    ```bash
    flutter upgrade
    ```

- **Problèmes de PATH ?**

  - Vérifiez si la commande `flutter` fonctionne dans le terminal. Si ce n’est pas le cas, assurez-vous que `C:\flutter\bin` est bien ajouté au **PATH**.
