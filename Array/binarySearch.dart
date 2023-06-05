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
  int result= binarySearch(arr);
  if (result==-1) {
    print('Not found');
  }
  else{
    print('Found at ${result+1}');
  }
}

int binarySearch(List arr){
  int low=0,high=arr.length-1;
  print('Enter the value');
    int value=int.parse(stdin.readLineSync()!);
  while(low<=high){
    int mid=(low+high)~/2;
    
    if (arr[mid]==value) {
      return mid;
    }
    else if(arr[mid]>value){
      high=mid-1;
    }
    else{
      low=mid+1;
    }
  }
  return -1;
}
