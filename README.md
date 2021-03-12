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

### Feature structure

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
