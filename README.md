# WESA Construction - Site Web

Site web officiel de **WESA Construction**, entreprise de construction et rénovation basée à Waregem, Belgique.

## Aperçu

Ce site est développé avec **Flutter Web** et hébergé via **Firebase Hosting**. Il présente les services de l'entreprise, un aperçu de l'activité et les coordonnées de contact.

### Sections du site

- **Accueil** - Présentation de l'entreprise et description de l'activité
- **Services** - Liste des prestations proposées (rénovation, plomberie, électricité, toiture, peinture, etc.)
- **Contact** - Coordonnées téléphoniques, email, adresse et réseaux sociaux

## Technologies utilisées

- **Framework** : Flutter (Web)
- **Hébergement** : Firebase Hosting
- **Analytique** : Firebase Analytics
- **Carousel** : carousel_slider
- **Lancement d'URLs** : url_launcher

## Installation

```bash
flutter pub get
flutter run -d chrome
```

## Déploiement

```bash
flutter build web
firebase deploy
```

## Structure du projet

- **`lib/`** - Code Dart source de l'application Flutter
  - `main.dart` - Point d'entrée de l'application
  - `home_page.dart` - Page principale avec navigation par onglets
  - `welcome.dart` - Section d'accueil
  - `service.dart` - Section des services
  - `contact.dart` - Section de contact
- **`assets/`** - Images et ressources (photos de projets, logo)
- **`web/`** - Fichiers de configuration web
- **`firebase.json`** - Configuration Firebase Hosting

## Contact

- **Téléphone** : +32 46 85 47 559
- **Email** : wesachito@gmail.com
- **Adresse** : Hoogmolenwegel 3, 8790 Waregem
- **Facebook** : Wesa Officiel
- **Instagram** : @wesa_officiel
- **TikTok** : @wesa.officiel
