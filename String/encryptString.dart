import 'dart:io';

void main() {
  print('Enter the word : ');
  String input = stdin.readLineSync()!;
  print(replaceAlphabets(input));
  
}

String replaceAlphabets(String input) {
  String output = '';
  for (int i = 0; i < input.length; i++) {
    int charCode = input.codeUnitAt(i);
    if (charCode >= 65 && charCode <= 90) {
      charCode = (charCode + 2 - 65) % 26 + 65;
    } else if (charCode >= 97 && charCode <= 122) {
      charCode = (charCode + 2 - 97) % 26 + 97;
    }
    output += String.fromCharCode(charCode);
  }
  return output;
}