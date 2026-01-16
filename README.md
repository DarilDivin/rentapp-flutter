# RentApp

Application de location de voitures développée avec Flutter et Firebase.

## Présentation

RentApp permet aux utilisateurs de parcourir les voitures disponibles à la location, consulter les informations détaillées (tarifs, caractéristiques) et localiser les véhicules sur une carte interactive.

## Technologies

- **Flutter** — Framework UI multiplateforme
- **Firebase / Cloud Firestore** — Backend et base de données temps réel
- **BLoC** — Gestion d'état
- **GetIt** — Injection de dépendances
- **flutter_map** — Cartes interactives

## Architecture

Le projet suit les principes de la Clean Architecture :

```
lib/
├── data/           # Sources de données, modèles, implémentation des repositories
├── domain/         # Logique métier, entités, cas d'utilisation
├── presentation/   # Couche UI (pages, widgets, BLoC)
└── main.dart
```

## Installation

### Prérequis

- Flutter SDK (^3.10.4)
- Projet Firebase avec Firestore activé

### Étapes

1. Cloner le dépôt
   ```bash
   git clone https://github.com/DarilDivin/rentapp-flutter.git
   cd rentapp-flutter
   ```

2. Installer les dépendances
   ```bash
   flutter pub get
   ```

3. Configurer Firebase
   - Ajouter `google-services.json` (Android) et `GoogleService-Info.plist` (iOS)
   - Mettre à jour `firebase_options.dart` si nécessaire

4. Lancer l'application
   ```bash
   flutter run
   ```

## Licence

Projet à but éducatif.
