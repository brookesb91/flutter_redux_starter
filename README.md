# Flutter Redux Starter

A starter project using Redux state management.

## Project Structure

| Path                  | Description                      |                      |
| --------------------- | -------------------------------- | -------------------- |
| `lib/main.dart`       | Main entry file.                 |                      |
| `lib/app.dart`        | App declarations and entry file. |                      |
| `lib/locator.dart`    | Dependency set-up.               |                      |
| `lib/app_state.dart`  | App state model.                 |                      |
| `lib/app_router.dart` | App page routing.                |                      |
| `lib/features/*`      | App features.                    | [:link:](#features)  |
| `lib/ui/*`            | Shared UI.                       | [:link:](#shared-ui) |
| `assets/*`            | Assets directory.                |                      |
| `android/*`           | Android platform assets.         |                      |
| `ios/*`               | iOS platform assets.             |                      |
| `web/*`               | Web platform assets.             |                      |
| `test/*`              | Tests.                           |                      |

### Shared UI

Shared UI concerns and declarations. Shared UI libraries are located at `libs/ui`.

| Path        | Description           |                    |
| ----------- | --------------------- | ------------------ |
| `layouts/*` | Shared layout widgets | [:link:](#layouts) |
| `theme/*`   | Theme declarations    | [:link:](#theme)   |
| `widgets/*` | Shared widgets        | [:link:](#widgets) |

#### Layouts

> TODO

#### Theme

| Path                | Description                    |
| ------------------- | ------------------------------ |
| `theme/colors.dart` | Theme color declarations.      |
| `theme/text.dart`   | Theme text style declarations. |
| `theme/theme.dart`  | Theme data.                    |

#### Widgets

> TODO

### Features

All features are kept in the `lib/features` directory.

| Path                              | Description                                        |                            |
| --------------------------------- | -------------------------------------------------- | -------------------------- |
| `{feature}/{feature}_router.dart` | Feature page routing, if required.                 | [:link:](#feature-routing) |
| `{feature}/pages/*`               | Pages for this feature, if any.                    | [:link:](#feature-pages)   |
| `{feature}/services/*`            | Services for this feature, if any.                 |                            |
| `{feature}/+state/*`              | Supplementary state for this feature, if required. | [:link:](#feature-state)   |

#### Feature Routing

If page routing is required, the feature directory will need a router.
Feature routers are of type `Map<String, Widget Function(BuildContext)>`, mapping routes to widget builders. All routes should be prefixed with `'/'`, eg. `/home`.

| Path                    | Description                         |
| ----------------------- | ----------------------------------- |
| `{feature}_router.dart` | Naming scheme for a feature router. |

#### Feature Pages

Feature pages are located at `lib/features/{feature}/pages`.

| Path               | Description                      |
| ------------------ | -------------------------------- |
| `{name}_page.dart` | Naming scheme for feature pages. |

#### Feature State

All state related logic for a feature is located at `lib/features/{feature}/+state`.

| Path           | Description                            |
| -------------- | -------------------------------------- |
| `actions.dart` | Store dispatched actions declarations. |
| `effects.dart` | Store side-effect declarations.        |
| `facade.dart`  | Store facade declaration.              |
| `model.dart`   | Store state models for this feature.   |
| `reducer.dart` | Store reducer declarations.            |

##### State Models

> TODO

##### State Actions

> TODO

##### State Reducer

> TODO

##### State Facade

> TODO

##### State Effects

> TODO

#### Adding Feature State

> The following assumes a feature named `MyFeature`.

1. Add the feature state key `mixin` to the app state in `lib/app_state.dart`.

2. Add the state to the `AppState` constructor as a requirement.

3. Add the initial state to the initial app state in the `AppState.initial()` factory.

4. Ensure the `copyWith` function accommodates for the new feature state.

5. Include the new feature state in `hashCode` generation.

6. Include the new feature state in the object equality override.

```dart
/// Add feature state key mixin to app state.
class AppState with MyFeatureStateKey {
  /// Declare the feature state property.
  final MyFeatureState myFeatureState;
  final bool isLoading;

  AppState({
    /// Include requirement in constructor.
    @required this.myFeatureState,
    this.isLoading
  });

  /// Include in state copy method
  AppState copyWith({MyFeatureState myFeatureState, bool isLoading}) {
    return AppState(
      myFeatureState: myFeatureState ?? this.myFeatureState,
      isLoading: isLoading ?? this.isLoading);
  }

  /// Include is hashCode
  @override
  int get hashCode =>
    isLoading.hashCode ^ myFeatureState.hashCode;

  /// Include in equality comparison
  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is AppState && myFeatureState == other.myFeatureState;
}
```

#### Adding Feature Routing

> The following assumes an app named `MyApp` and a feature named `MyFeature`.

1. Import the feature router into `app.dart`.

2. In the app constructor, call `registerRouter([router])` to register the feature router.

```dart
/// Feature import.
import 'features/my_feature/my_feature_router.dart';
/// Ensure app router is imported.
import 'app_router.dart';

class MyApp {
  MyApp(){
    registerRouter(myFeatureRouter);
    /// Other routers...
  }

  /// etc.
}
```
