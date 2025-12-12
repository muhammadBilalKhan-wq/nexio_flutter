# Blueprint: Flutter Social Networking App

This document outlines the architecture, features, and implementation plan for a production-quality social networking app skeleton built with Flutter and Firebase.

## 1. Overview

The goal is to create a robust, scalable, and maintainable Flutter application that serves as a template for a social network. It will include core features like authentication, a post feed, user profiles, and real-time interactions.

**Chosen Architecture:** Clean Architecture with a Feature-First structure, using **Riverpod + Freezed + Go_Router**.

*   **Justification:** Riverpod offers a compile-safe, flexible, and performant solution for state management and dependency injection, reducing boilerplate compared to other options. `freezed` ensures immutable state and data models, preventing common bugs. `go_router` provides a declarative, URL-based navigation system that is ideal for deep linking and web support.

## 2. Project & Directory Structure

The project will be organized by feature to promote modularity and scalability.

```
lib/
├── core/
│   ├── constants/         # App-wide constants
│   ├── errors/            # Custom error/failure classes
│   ├── extensions/        # Dart extension methods
│   ├── theme/             # Theming and styles
│   ├── utils/             # Utility functions
│   └── firebase_providers.dart # Core Firebase service providers
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/ # Abstract and remote datasources
│   │   │   ├── models/      # Data Transfer Objects (DTOs) with fromJson/toJson
│   │   │   └── repositories/ # Implementation of domain repositories
│   │   ├── domain/
│   │   │   ├── entities/    # Core business objects (plain Dart objects)
│   │   │   ├── repositories/ # Abstract repository interfaces
│   │   │   └── usecases/    # Business logic for specific features
│   │   └── presentation/
│   │       ├── controllers/ # Riverpod providers/notifiers
│   │       ├── screens/     # UI screens/pages
│   │       └── widgets/     # Reusable widgets for the feature
│   ├── feed/
│   ├── post/
│   ├── profile/
│   └── notifications/
├── app.dart               # Main app widget with router setup
├── main.dart              # App entry point
└── router.dart            # GoRouter configuration
test/
└── ...
```

## 3. Current Implementation Plan

This is the plan for the current request to build the application skeleton.

1.  **Setup & Scaffolding:**
    *   [x] Justify and choose the architectural stack.
    *   [x] Create this `blueprint.md` file.
    *   [ ] Configure Firebase MCP for IDE integration.
    *   [ ] Define all dependencies in `pubspec.yaml`.
    *   [ ] Execute `flutter pub get`.
    *   [ ] Create the full directory structure.
    *   [ ] Add strict `analysis_options.yaml`.

2.  **Firebase & Configuration:**
    *   [ ] Create placeholder `google-services.json` and `GoogleService-Info.plist` with instructions.
    *   [ ] Write `firestore.rules` and `storage.rules`.

3.  **Core App Implementation:**
    *   [ ] Implement `main.dart` to initialize Firebase and providers.
    *   [ ] Implement `app.dart` and `router.dart` for navigation.
    *   [ ] Implement theming for light/dark modes.

4.  **Feature Implementation: Authentication**
    *   [ ] **Data Layer:** Create user model, auth datasources (Firebase), and repository implementation.
    *   [ ] **Domain Layer:** Create user entity, abstract repository, and use cases for login, signup, logout, and Google Sign-In.
    *   [ ] **Presentation Layer:** Create Riverpod controllers, and UI for Login, Signup, and Profile screens.

5.  **Build & Codegen:**
    *   [ ] Run `build_runner` to generate `freezed` and `riverpod` code.

6.  **Developer Experience & CI/CD:**
    *   [ ] Create `README.md` with full setup instructions.
    *   [ ] Create `CONTRIBUTING.md` with contribution guidelines.
    *   [ ] Create a GitHub Actions workflow for testing and analysis.

7.  **Testing:**
    *   [ ] Add a unit test for an auth use case.
    *   [ ] Add a widget test for the login screen.

8.  **Final Review:**
    *   [ ] Run `flutter analyze` and `flutter test` to ensure all checks pass.
    *   [ ] Summarize the work and provide next steps.
