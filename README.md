
![LogSnag](https://logsnag.com/og-image.png "LogSnag")

# LogSnag

[![License: MIT][license_badge]][license_link]

## Installation 💻

**❗ In order to start using Logsnag you must have the [Dart SDK][dart_install_link] installed on your machine.**

Add `logsnag` to your `pubspec.yaml`:

```yaml
dependencies:
  logsnag: {version}
```

Install it:

```sh
dart pub get
```

---

## Usage 🚀

### Initialization

To initialize Logsnag, import the `logsnag` package and create a new instance of `Logsnag`:

```dart
import 'package:logsnag/logsnag.dart';

void main() {
  final logSnag = LogSnag(
    project: {project},
    token: {token},
  );
}
```

### Logging

To send a log, use the `log` method:

```dart
logSnag.log(
  channel: 'test-channel',
  event: 'User Joined',
  description: 'Email: john@example.com',
  icon: '👋',
  tags: {
    'name': 'john doe',
    'email': 'john@example.com',
  },
  notify: true,
);
```

### Insight

To send an insight, use the `insight` method:

```dart
logSnag.insight(
  title: 'Test',
  value: 'Test',
  icon: '👋',
);
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT