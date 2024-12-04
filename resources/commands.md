# Commandes Flutter essentielles

Retrouver tout les commandes de base à connaitre sur Flutter.

## 1. Commandes de base

- `flutter doctor`  
  Vérifie l'installation de Flutter et détecte les éventuels problèmes de configuration.

- `flutter create nom_du_projet`  
  Crée un nouveau projet Flutter.

- `flutter run`  
  Exécute l'application Flutter sur l'appareil connecté ou l'émulateur actif.

- `flutter devices`  
  Liste tous les appareils connectés et disponibles pour le déploiement.

- `flutter clean`  
  Supprime les fichiers générés par Flutter pour repartir sur une base propre.

---

## 2. Gestion des packages

- `flutter pub get`  
  Télécharge les packages définis dans le fichier `pubspec.yaml`.

- `flutter pub upgrade`  
  Met à jour les packages vers leurs dernières versions compatibles.

- `flutter pub outdated`  
  Vérifie si des packages utilisés ont des mises à jour disponibles.

- `flutter pub add [nom_du_package]`  
  Ajoute un nouveau package au fichier `pubspec.yaml` et l'installe.  
  Exemple :

  ```bash
  flutter pub add http
  ```

- `flutter pub remove [nom_du_package]`  
  Supprime un package du fichier `pubspec.yaml`.

---

## 3. Gestion des builds

- `flutter build apk`  
  Génère un fichier APK pour Android.

- `flutter build appbundle`  
  Crée un Android App Bundle (AAB), requis pour publier sur le Play Store.

- `flutter build ios`  
  Génère une application pour iOS. Requiert un Mac et Xcode.

- `flutter build web`  
  Compile l'application pour le Web.

- `flutter build [platform] --release`  
  Génère une version optimisée pour une plateforme spécifique (Android, iOS, web, etc.).  
  Exemple :

  ```bash
  flutter build apk --release
  ```

---

## 4. Tests et débogage

- `flutter test`  
  Exécute les tests unitaires présents dans le projet.

- `flutter analyze`  
  Analyse le code pour détecter les erreurs et améliorer sa qualité.

- `flutter debug`  
  Lance l'application en mode débogage.

- `flutter attach`  
  Connecte Flutter à une application en cours d'exécution pour déboguer.

---

## 5. Gestion des versions et configurations

- `flutter upgrade`  
  Met à jour Flutter vers la dernière version stable.

- `flutter downgrade`  
  Revient à une version antérieure de Flutter.

- `flutter config`  
  Modifie ou affiche les configurations Flutter.  
  Exemple :

  ```bash
  flutter config --enable-web
  ```

---

## 6. Autres commandes utiles

- `flutter format [fichier_dart]`  
  Formate un fichier Dart selon les règles officielles.  
  Exemple :

  ```bash
  flutter format lib/main.dart
  ```

- `flutter upgrade --force`  
  Force la mise à jour, même si des conflits sont détectés.

- `flutter precache`  
  Télécharge les artefacts nécessaires pour toutes les plateformes supportées.

---

## 7. Commandes pour les émulateurs

- `flutter emulators`  
  Liste les émulateurs disponibles.

- `flutter emulators --launch [nom_de_l_emulateur]`  
  Lance un émulateur spécifique.  
  Exemple :

  ```bash
  flutter emulators --launch Pixel_4_API_30
  ```

- `flutter emulator --create [nom]`  
  Crée un nouvel émulateur.

---

## Commande pour vérifier la performance

- `flutter run --profile`  
  Lance l'application en mode profilage pour mesurer ses performances.

- `flutter build apk --split-per-abi`  
  Génère des APK optimisés pour différentes architectures (armeabi-v7a, arm64-v8a, etc.).
