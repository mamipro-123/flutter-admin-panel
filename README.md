# Admin Panel

A modern and responsive admin panel built with Flutter, designed to work seamlessly across both web (Chrome) and mobile platforms.

## 📱 Screenshots

### Web Version (Desktop)
![Desktop View](assets/readme.md/web/Screenshot%202025-04-25%20at%2022.52.42.png)

### Web Version (Responsive Views)
<div style="display: flex; flex-wrap: wrap; gap: 20px;">
  <img src="assets/readme.md/web/Screenshot%202025-04-25%20at%2022.52.56.png" width="45%" alt="Web View 1">
  <img src="assets/readme.md/web/Screenshot%202025-04-25%20at%2022.53.06.png" width="45%" alt="Web View 2">
  <img src="assets/readme.md/web/Screenshot%202025-04-25%20at%2022.53.15.png" width="45%" alt="Web View 3">
  <img src="assets/readme.md/web/Screenshot%202025-04-25%20at%2022.53.34.png" width="45%" alt="Web View 4">
</div>

### Mobile Version
<div style="display: flex; flex-wrap: wrap; gap: 20px;">
  <img src="assets/readme.md/mobil/Screenshot%202025-04-25%20at%2022.36.24.png" width="45%" alt="Mobile View 1">
  <img src="assets/readme.md/mobil/Screenshot%202025-04-25%20at%2022.36.35.png" width="45%" alt="Mobile View 2">
  <img src="assets/readme.md/mobil/Screenshot%202025-04-25%20at%2022.36.47.png" width="45%" alt="Mobile View 3">
  <img src="assets/readme.md/mobil/Screenshot%202025-04-25%20at%2022.37.28.png" width="45%" alt="Mobile View 4">
</div>

## 🏗️ Project Architecture

### Directory Structure
```
lib/
├── main.dart                    # Application entry point
│
├── app/                         # App-wide configurations and setup
│   ├── app.dart                 # Main app configuration
│   ├── app.router.dart          # Route definitions
│   ├── app_base_view_model.dart # Base view model for all screens
│   └── admin_app.dart           # Admin app specific configurations
│
├── core/                        # Core functionality and utilities
│   ├── api/                     # API related code
│   │   └── api.dart             # API client configuration
│   ├── di/                      # Dependency injection
│   │   └── get_it.dart          # GetIt service locator setup
│   ├── error/                   # Error handling
│   ├── repository/              # Data repositories
│   ├── models/                  # Data models
│   ├── helpers/                 # Helper utilities
│   └── services/                # Core services
│
├── common/                      # Shared components
│   ├── constants/               # App-wide constants
│   └── helpers/                 # Shared helper functions
│
└── ui/                         # UI components and screens
    ├── home/                   # Home screen
    │   ├── home_view.dart      # Home screen UI
    │   └── home_view_model.dart # Home screen logic
    ├── login/                  # Login screen
    ├── main/                   # Main screen
    ├── notifications/          # Notifications screen
    ├── profile/               # Profile screen
    ├── search/                # Search screen
    └── widgets/               # Reusable UI components
```

### Technology Stack

#### State Management & Architecture
- **Stacked** (v3.4.3) - MVVM architecture pattern implementation
- **Stacked Services** - Service locator and dependency injection
- **Stacked Generator** - Code generation for Stacked architecture
- **GetIt** - Dependency injection and service locator

#### Network & Data Handling
- **Dio** (v5.5.0) - HTTP client for API requests
- **Retrofit** (v4.1.0) - Type-safe HTTP client
- **JSON Serialization** - For data model serialization
- **Freezed** - Immutable state management and data classes

#### UI Components & Styling
- **Material Design** - Base UI framework
- **Google Fonts** - Typography
- **Responsive Size Helper Plus** - Responsive UI utilities
- **Animations** - Flutter animations package
- **Flutter Slidable** - Swipeable widgets
- **Smooth Page Indicator** - Page transition indicators
- **Pie Chart** & **Fl Chart** - Data visualization

#### Localization & Storage
- **Easy Localization** - Multi-language support
- **Shared Preferences** - Local data storage
- **Flutter Secure Storage** - Secure data storage

#### Security
- **Crypto** - Cryptographic operations

### Key Features
- Responsive design for both web and mobile
- MVVM architecture pattern
- Multi-language support
- Secure data handling
- Modern UI components
- Data visualization capabilities
- Form validation
- Local and secure storage

### Development Tools
- **Build Runner** - Code generation
- **Flutter Lints** - Code quality and style enforcement
- **JSON Serializable** - JSON serialization code generation
- **Retrofit Generator** - API client code generation

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK
- Android Studio / VS Code
- Chrome (for web development)

### Installation

1. Clone the repository
```bash
git clone https://github.com/mamipro-123/flutter-admin-panel.git
```

2. Navigate to project directory
```bash
cd admin_panel
```

3. Install dependencies
```bash
flutter pub get
```

4. Generate code (for Stacked, Freezed, and other code generation)
```bash
dart run build_runner build
```

5. Run the app
```bash
flutter run
```

## 🛠️ Built With

- [Flutter](https://flutter.dev/) - UI Framework
- [Dart](https://dart.dev/) - Programming Language

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- Muhammed Rıza Kaynak - Initial work

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- All contributors who have helped this project grow
