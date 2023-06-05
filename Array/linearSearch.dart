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
  int result= linearSearch(arr);
  if (result==-1) {
    print('Not found');
  }
  else{
    print('Found at ${result+1}');
  }
}

int linearSearch(List arr){
  print('Enter the value');
  int value=int.parse(stdin.readLineSync()!);
  for (var i = 0; i < arr.length; i++) {
    if (arr[i]==value) {
      return i;
    }
  }
  return -1;
}
