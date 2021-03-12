# flutter_redux_starter

A starter project using Redux state management.

## Project Structure

| Path                  | Description |
| --------------------- | ----------- |
| `lib/main.dart`       |             |
| `lib/app.dart`        |             |
| `lib/locator.dart`    |             |
| `lib/app_state.dart`  |             |
| `lib/app_router.dart` |             |
| `lib/features/*`      |             |
| `lib/ui/*`            |             |
| `assets/*`            |             |
| `web/*`               |             |

### Shared UI

| Path        | Description |
| ----------- | ----------- |
| `layouts/*` |             |
| `theme/*`   |             |
| `widgets/*` |             |

#### Layouts

#### Theme

| Path                | Description |
| ------------------- | ----------- |
| `theme/colors.dart` |             |
| `theme/text.dart`   |             |
| `theme/theme.dart`  |             |

#### Widgets

### Feature structure

| Path                              | Description |
| --------------------------------- | ----------- |
| `{feature}/{feature}_router.dart` |             |
| `{feature}/pages/*`               |             |
| `{feature}/services/*`            |             |
| `{feature}/+state/*`              |             |

#### Feature pages

| Path                               | Description |
| ---------------------------------- | ----------- |
| `{feature}/pages/{name}_page.dart` |             |

#### Feature state

| Path                            | Description |
| ------------------------------- | ----------- |
| `{feature}/+state/actions.dart` |             |
| `{feature}/+state/effects.dart` |             |
| `{feature}/+state/facade.dart`  |             |
| `{feature}/+state/model.dart`   |             |
| `{feature}/+state/reducer.dart` |             |
