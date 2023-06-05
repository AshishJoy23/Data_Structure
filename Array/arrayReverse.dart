import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the size');
  int n=int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));    
  }
  print(arr);
  arrayReverse(arr);
  print(arr);
}

void arrayReverse(List arr){
  for (var i = 0; i < arr.length/2; i++) {
    int temp = arr[i];
    arr[i]=arr[arr.length-1-i];
    arr[arr.length-1-i]=temp;
  }
  return;
}
