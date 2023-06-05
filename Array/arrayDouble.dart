import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the size of array');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  arrayDouble(arr);
  print(arr);
}

void arrayDouble(List arr){
  
  int n=arr.length;
  arr.length=2*arr.length;
  for (var i = 0; i < n; i++) {
    //arr[n+i]=arr[i];
    arr[n+i]=arr[n-1-i];
  }
  return;

}