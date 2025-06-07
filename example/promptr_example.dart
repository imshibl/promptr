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
