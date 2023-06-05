import 'dart:io';

void main(List<String> args) {
  List arr=[];
  print('Enter the size of array');
  int n = int.parse(stdin.readLineSync()!);
  print('Enter the values');
  for (var i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print(arr);
  large2ndLarge(arr);
  
}

void large2ndLarge(List arr){
  int large=0,second=0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i]>large) {
      second=large;
      large=arr[i];
    }
    else if(arr[i]>second){
      second=arr[i];
    }
  }
  print(large);
  print(second);
  return;

}