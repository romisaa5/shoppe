# 🛍️ Shoppe Flutter E-Commerce App

<p align="center">
  <img src="assets/master/icon.png" alt="Shoppe Logo" width="100"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter" />
  <img src="https://img.shields.io/badge/Dart-3.x-blue?logo=dart" />
  <img src="https://img.shields.io/badge/State%20Management-BLoC-blueviolet" />
  <img src="https://img.shields.io/badge/Architecture-Clean%20Architecture-green" />
  <img src="https://img.shields.io/badge/DI-GetIt-orange" />
</p>

---

## 📱 About

**Shoppe** is a fully-featured Flutter e-commerce mobile application built with Clean Architecture and best practices in mind. The app covers the full shopping experience  from onboarding and authentication all the way to browsing products, managing favorites, and viewing detailed product info.

---

## ✨ Features

- 🔐 Authentication (Login / Signup / Email Verification)
- 🛒 Product browsing with categories and filtering
- ❤️ Favorites / Wishlist management
- 🏷️ Brands listing
- 📦 Product detail pages
- 👤 User profile
- 🌊 Splash screen & smooth onboarding flow
- 🎨 Custom theme with Cairo font

---

## 🏗️ Project Structure

```
lib/
├── core/                      # Shared infrastructure
│   ├── common/widgets/        # Reusable UI widgets
│   ├── di/                    # Dependency injection setup (GetIt)
│   ├── helpers/               # Utility helpers
│   ├── networking/            # Dio client, interceptors, API setup
│   ├── routing/               # App router & navigation
│   ├── theme/                 # App theme, colors, text styles
│   └── utils/                 # General utility functions
│
└── features/                  # Feature modules (each is self-contained)
    ├── brands/                # Brands listing screen
    ├── details/               # Product details screen
    ├── favorite/              # Favorites / Wishlist
    ├── home/presentation/     # Home screen UI
    ├── login/                 # Login screen & BLoC
    ├── onboarding/present...  # Onboarding slides
    ├── products/              # Products listing
    ├── profile/               # User profile
    ├── signup/                # Sign up screen & BLoC
    └── verify_email/          # Email verification screen
```

---

## 🧰 Tech Stack & Packages

| Category | Package |
|---|---|
| State Management | `flutter_bloc` |
| Networking | `dio` + `retrofit` + `pretty_dio_logger` |
| Dependency Injection | `get_it` |
| Local Storage | `shared_preferences` + `flutter_secure_storage` |
| Code Generation | `build_runner`, `freezed`, `json_serializable`, `retrofit_generator` |
| UI | `flutter_screenutil`, `flutter_svg`, `shimmer`, `pinput`, `cached_network_image` |
| Splash & Icons | `flutter_native_splash`, `flutter_launcher_icons` |

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `^3.x`
- Dart SDK `^3.11.4`

### Installation

```bash
# 1. Clone the repo
git clone https://github.com/romisaa5/shoppe.git
cd shoppe

# 2. Install dependencies
flutter pub get

# 3. Run code generation
dart run build_runner build --delete-conflicting-outputs

# 4. Run the app
flutter run
```

---

## 🎨 Design

- **Font:** Cairo (supports Arabic & Latin)
- **Primary Color:** `#9775FA` (Purple)
- **Splash Screen:** Custom branded splash with native Android 12 support

---

## 📂 Architecture

The project follows **Clean Architecture** principles organized by features. Each feature is self-contained with its own presentation layer (screens + BLoC), while shared infrastructure lives in `core/`.



Dependency injection is handled globally via **GetIt**, configured in `core/di/`.

