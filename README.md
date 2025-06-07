
---

# 🛠️ promptr

**A simple and extensible Dart package for building interactive command-line interfaces.**

`promptr` makes it easy to gather input from users with clean prompts and multiple input types—text, numbers, confirmations, and even menu-style options. Perfect for robust CLI tools and scripts.

---

## ✨ Features

* Prompt for single-line or multi-line text input
* Default value support
* Yes/no confirmations
* Integer input with validation
* Single or multiple choice menus
* ANSI color support

---

## 🚀 Getting Started

### 📦 Installation

Add `promptr` to your `pubspec.yaml`:

```yaml
dependencies:
  promptr: ^1.0.0
```

Then run:

```bash
dart pub get
```

---

## 🧪 Example

```dart
import 'package:io/ansi.dart';
import 'package:promptr/promptr.dart' as promptr;

/// Example: Developer Profile Setup CLI using `promptr`.
void main() {
  print('👨‍💻 Welcome to Developer Profile Setup!\n');

  // Prompt for the developer's username
  final username = promptr.get('Choose a username');
  print('Nice to meet you, @$username!');

  // Ask for a short bio with multiline support
  final bio = promptr.get(
    'Write a short bio (use \\ to escape line breaks):',
    allowMultiline: true,
    inputColor: cyan,
  );
  print('\nBio saved!');

  // Ask for primary programming language
  final languages = ['Dart', 'Python', 'JavaScript', 'C++', 'Go'];
  final primaryLang = promptr.choose(
    'Pick your primary programming language:',
    languages,
    defaultsTo: 'Dart',
  );
  print('Primary language set to: $primaryLang');

  // Ask for years of experience with integer validation
  final experience = promptr.getInt(
    'How many years of coding experience do you have?',
    defaultsTo: 2,
  );
  print('Great! $experience years of experience logged.');

  // Ask for technologies familiar with (multi-select)
  final techStack = ['Flutter', 'Node.js', 'Firebase', 'Docker', 'Kubernetes'];
  final knownTech = promptr.multiChoose(
    'Select all technologies you’ve worked with:',
    techStack,
  );
  print('Your tech stack: ${knownTech.join(', ')}');

  // Confirm if they want to save this profile
  final shouldSave = promptr.getBool('Do you want to save your profile?');
  if (shouldSave) {
    print(green.wrap('\n✅ Profile saved successfully!'));
  } else {
    print(red.wrap('\n❌ Profile not saved.'));
  }
}

```

---

## 📚 API Overview

| Method                         | Description                                 |
| ------------------------------ | ------------------------------------------- |
| `promptr.get(...)`             | Prompt for user input (supports multiline)  |
| `promptr.getBool(...)`         | Yes/No confirmation                         |
| `promptr.getInt(...)`          | Prompt for an integer with optional default |
| `promptr.choose(...)`          | Multi-line, user-friendly choice menu       |
| `promptr.chooseShorthand(...)` | Quick one-liner style menu                  |
| `promptr.multiChoose(...)`     | Select multiple options from a list         |

---

## 📸 Demo

Check the [`example/`](example/) folder or [demo.mp4](example/demo.mp4) to see it in action!

---

## 🧩 Contributions

Got a new prompt idea? Open a PR or issue!

---

## 📜 License

MIT © 2025 \Mohammed Shibil M

---