# aromaqueen

A new Flutter project.

## Project Description

This is a Flutter-based mobile application template designed as a demo project to showcase the use of GetX for state management, ScreenUtils for responsive design, and Flutter’s localization for multi-language support. The template provides a scalable and maintainable architecture, making it a great starting point for building Flutter applications.

Key features:
- **State Management**: Powered by GetX for efficient and reactive state handling.
- **Responsive Design**: Utilizes ScreenUtils for adaptable layouts across devices.
- **Localization**: Supports multiple languages for global accessibility.
- **Scalable Architecture**: Feature-first approach for easy expansion and modular development.

This project serves as a foundation for developers to kickstart their Flutter applications efficiently.

---

## Running the Project

### Prerequisites
- **Flutter SDK**: Ensure you have Flutter installed (version 2.18.0 or higher recommended). Run `flutter doctor` to verify your setup.
- **Dart**: Comes with Flutter, no separate installation needed.
- **IDE**: VS Code or Android Studio with Flutter plugins.
- **Device/Emulator**: An Android/iOS emulator or physical device.

### Steps to Run
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/jourapothole.git
   cd jourapothole
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate Localization Files**:
   ```bash
   flutter gen-l10n
   ```
   - This generates `import 'package:flutter_gen/gen_l10n/app_localizations.dart';` from `.arb` files in `lib/l10n/`.

4. **Run the App**:
   ```bash
   flutter run
   ```
   - Launches the app on your connected device or emulator.
   - Use `flutter run -d <device-id>` to specify a device if multiple are connected (find device IDs with `flutter devices`).

5. **Clean Build (Optional)**:
   If you encounter issues, clean the project and rebuild:
   ```bash
   flutter clean
   flutter pub get
   flutter gen-l10n
   flutter run
   ```

---

## Locale Setup Commands

JouraPothole supports multiple languages (English and Spanish by default) using Flutter’s built-in localization system. Here’s how to set it up:

### Requirements
- `.arb` files in `lib/l10n/` (e.g., `app_en.arb`, `app_es.arb`).
- `intl: ^0.19.0` in `pubspec.yaml`.
- `flutter: generate: true` in `pubspec.yaml`.

### Commands
1. **Generate Localization Files**:
   ```bash
   flutter gen-l10n
   ```
   - Creates `package:flutter_gen/gen_l10n/app_localizations.dart` with `AppLocalizations` class.
   - Run this whenever you update `.arb` files.

2. **Verbose Mode (Debugging)**:
   ```bash
   flutter gen-l10n -v
   ```
   - Provides detailed output to troubleshoot issues.

3. **Switch Locale in App**:
   - The app defaults to English (`Locale('en')`) in `main.dart`.
   - Use the "Switch to Spanish" button in `HomeView` to test Spanish (`Get.updateLocale(const Locale('es'))`).

### Example `.arb` Files
- **`lib/l10n/app_en.arb`**:
  ```json
  {
    "homeTitle": "Home",
    "welcomeMessage": "Welcome to JouraPothole!",
    "count": "Reported Defects: {value}",
    "increment": "Report Defect",
    "@count": {
      "placeholders": {
        "value": {
          "type": "String"
        }
      }
    }
  }
  ```
- **`lib/l10n/app_es.arb`**:
  ```json
  {
    "homeTitle": "Inicio",
    "welcomeMessage": "¡Bienvenido a JouraPothole!",
    "count": "Defectos Reportados: {value}",
    "increment": "Reportar Defecto",
    "@count": {
      "placeholders": {
        "value": {
          "type": "String"
        }
      }
    }
  }
  ```

---

## Project Structure
The app uses a **feature-first approach** for scalability:
```
jourapothole/
├── lib/
│   ├── core/              # App-wide utilities (themes, routes, loading)
│   ├── features/          # Feature modules (e.g., home)
│   │   └── home/         # Home feature (views, controllers, etc.)
│   ├── l10n/             # Localization files (.arb)
│   ├── app_en.arb        # English localization
│   ├── app_es.arb        # Spanish localization
│   └── main.dart         # App entry point
├── pubspec.yaml          # Dependencies
└── README.md             # This file
```

---

## Contributing
Feel free to fork this repository, submit pull requests, or open issues for bugs and feature requests. Let’s make roads safer together!

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.