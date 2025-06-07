import 'dart:io';

import 'package:promptr/promptr.dart' as promptr;

void main() {
  final data = promptr.getBool('Do you want to continue?');
  stdout.writeln("response $data");
}
