import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the size of array');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  addAtBegin(arr);
  print(arr);
}

void addAtBegin(List arr){
  arr.length=arr.length+1;
  print('Enter the value to be added');
  int value=int.parse(stdin.readLineSync()!);
  for (var i = arr.length-1; i >0; i--) {
    arr[i]=arr[i-1];
  }
  arr[0]=value;
  // int n=arr.length;
  // arr.length=2*arr.length;
  // for (var i = 0; i < n; i++) {
  //   arr[n+i]=arr[i];
  // }
  return;
}