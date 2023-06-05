import 'dart:io';

void main(List<String> args) {
  List arr1 = [10,3,23,8,0];
  List arr2 = [9,18,3,0];
  List arr=[];
  int i=0,j=0,k=0;
  while (i<arr1.length&&j<arr2.length) {
    if (arr1[i]<arr2[j]) {
      // arr[k]=arr[i];
      arr.add(arr[i]);
      i++;
    } else {
      // arr[k]=arr[j];
      arr.add(arr[j]);
      j++;
    }
    //++;
  }
  while (i<arr1.length) {
    //arr[k]=arr1[i];
    arr.add(arr[i]);
    i++;
   // k++;
  }
  while (j<arr2.length) {
    //arr[k]=arr2[j];
    arr.add(arr[j]);
    j++;
   // k++;
  }
  print(arr);
}