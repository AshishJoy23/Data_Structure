import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the limit');
  int n=int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print(arr);
  addAtAnyPos(arr);
  print(arr);
}

void addAtAnyPos(List arr){
  print('Enter value to be inserted');
  int value=int.parse(stdin.readLineSync()!);
  print('Enter the position');
  int pos = int.parse(stdin.readLineSync()!);
  int n=arr.length;
  arr.length=arr.length+1;
  for (var i = n; i >= pos; i--) {
    arr[i]=arr[i-1];
  }
  arr[pos-1]=value;
  return;
}