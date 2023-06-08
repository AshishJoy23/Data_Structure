import 'dart:io';

void main(List<String> args) {
  print('Enter the number to find factorial : ');
  var n = int.parse(stdin.readLineSync()!);
  print(fact(n));
}

fact(n) {
  if (n == 1) {
    return (1);
  } else {
    return (n * fact(n - 1));
  }
}