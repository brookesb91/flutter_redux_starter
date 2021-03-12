# flutter_redux_starter

A starter project using Redux state management.

## Project Structure

| Path                  | Description                      |
| --------------------- | -------------------------------- |
| `lib/main.dart`       | Main entry file.                 |
| `lib/app.dart`        | App declarations and entry file. |
| `lib/locator.dart`    | Dependency set-up.               |
| `lib/app_state.dart`  | App state model.                 |
| `lib/app_router.dart` | App page routing.                |
| `lib/features/*`      | App features.                    |
| `lib/ui/*`            | Shared UI.                       |
| `assets/*`            | Assets directory.                |
| `android/*`           | Android platform assets.         |
| `ios/*`               | iOS platform assets.             |
| `web/*`               | Web platform assets.             |
| `test/*`              | Tests.                           |

### Shared UI

| Path        | Description           |
| ----------- | --------------------- |
| `layouts/*` | Shared layout widgets |
| `theme/*`   | Theme declarations    |
| `widgets/*` | Shared widgets        |

#### Layouts

#### Theme

| Path                | Description                    |
| ------------------- | ------------------------------ |
| `theme/colors.dart` | Theme color declarations.      |
| `theme/text.dart`   | Theme text style declarations. |
| `theme/theme.dart`  | Theme data                     |

#### Widgets

### Features

| Path                              | Description                                        |
| --------------------------------- | -------------------------------------------------- |
| `{feature}/{feature}_router.dart` | Feature page routing, if required.                 |
| `{feature}/pages/*`               | Pages for this feature, if any.                    |
| `{feature}/services/*`            | Services for this feature, if any.                 |
| `{feature}/+state/*`              | Supplementary state for this feature, if required. |

#### Feature pages

| Path                               | Description                      |
| ---------------------------------- | -------------------------------- |
| `{feature}/pages/{name}_page.dart` | Naming scheme for feature pages. |

#### Feature state

| Path                            | Description                            |
| ------------------------------- | -------------------------------------- |
| `{feature}/+state/actions.dart` | Store dispatched actions declarations. |
| `{feature}/+state/effects.dart` | Store side-effect declarations.        |
| `{feature}/+state/facade.dart`  | Store facade declaration.              |
| `{feature}/+state/model.dart`   | Store state models for this feature.   |
| `{feature}/+state/reducer.dart` | Store reducer declarations.            |

#### Register feature state

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

  AppState({
    /// Include requirement in constructor.
    @required this.myFeatureState
  });
}
```

#### Register feature routing

> The following assumes an app named `MyApp` and a feature named `MyFeature`.

1. Import the feature router into `app.dart`. eg. `import 'features/{feature}/{feature}_router.dart`

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
