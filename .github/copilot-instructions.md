# Copilot Instructions

## Project Overview

**ResortBrowser** is an iOS SwiftUI app for browsing international resort and hotel listings. It displays resort/hotel listings fetched from Firebase Firestore and lets users browse by category, view details, and (in future) save favorites.

## Build

Open `ResortBrowser.xcodeproj` in Xcode and build/run with `Cmd+R`. Target: iOS. No CLI build scripts exist. Firebase is configured via `GoogleService-Info.plist`.

## Architecture

**MVVM** with SwiftUI:

- `ResortBrowserApp.swift` — App entry point; configures Firebase via `AppDelegate`
- `Modles/Resorts.swift` — Data layer: `Resorts` struct (Identifiable) and `Category` enum (Beach, Mountain, City, Desert). Note: directory is intentionally named `Modles` (typo in original).
- `Main/ViewModels/ViewModel.swift` — `ObservableObject` that fetches from Firestore collection `"Resorts"` and publishes `list: [Resorts]`
- `Main/Components/` — Reusable views (`ResortCard`, `ResortList`). `ResortList` owns and initializes the `ViewModel`.
- `Main/Views/` — Top-level tab screens: Home, Categories, AboutUs, Favorites, Settings
- `Main/Detail/` — Detail views: `ResortView` (full resort detail), `CategoryView` (stub)
- `TabBar.swift` — Root `TabView` wiring all five tabs

## Key Conventions

- **Firebase dependency**: Resort data lives entirely in Firestore. The `ViewModel.getData()` maps Firestore documents to `Resorts` structs using forced casts (`as! String`). Any new fields require updates to both the Firestore document schema and this mapping.
- **Resort images**: Stored as URL strings in Firestore (`image` field); rendered with `AsyncImage`.
- **Stub views**: `CategoriesView` and `FavoritesView` are placeholders — their features are not yet implemented.
- **No local data**: There is no local/mock data source; the app requires a live Firebase connection to display resorts.
- **`@ObservedObject` instantiation**: `ResortList` creates its own `ViewModel()` in `init()` and immediately calls `getData()`. If you add a view that needs resort data, follow this same pattern.
- **Navigation**: Uses `NavigationView` + `NavigationLink` (UIKit-era SwiftUI API, not `NavigationStack`).

## Dependencies (SPM)

- `firebase-ios-sdk` 10.20.0 — Firestore for resort data
- `GoogleService-Info.plist` must be present and valid for the app to function
