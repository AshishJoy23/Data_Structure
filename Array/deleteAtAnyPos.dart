import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the size of array');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print(arr.length);
  print(arr);
  delAtAnyPos(arr);
  print(arr);
}

void delAtAnyPos(List arr){
  print('Enter the position');
  int pos=int.parse(stdin.readLineSync()!);

  for (var i = pos-1; i <arr.length-1; i++) {
    arr[i]=arr[i+1];
  }
  arr.length=arr.length-1;
  print(arr.length);
  return;
}