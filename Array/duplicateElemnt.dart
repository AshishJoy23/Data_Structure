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
  // arr=arr.toSet().toList();
  duplicateElement(arr);
  //print(arr);
}

// void duplicateElement(List arr){
//   for (var i = 0; i < arr.length-1; i++) {
//     int count=0;
//     for (var j = i+1; j < arr.length; j++) {
//       if (arr[i]==arr[j]) {
//         count++;
//         if (count==1) {
//           print(arr[i]);
//         }
//       }
//     }
//   }
//   return;
// }

void duplicateElement(List arr){
  List uniqueArr=[];
  for (var i = 0; i < arr.length; i++) {
    if (!uniqueArr.contains(arr[i])) {
      uniqueArr.add(arr[i]);
    }   
  }
  print(uniqueArr);
  return;
}

// void main() {
//   List originalArray = [1, 2, 3, 4, 4, 5, 6, 6, 7,7,1,4,3,8];
//   int uniqueElementsCount = 0;

//   for (int i = 0; i < originalArray.length; i++) {
//     bool isDuplicate = false;
//     for (int j = 0; j < uniqueElementsCount; j++) {
//       if (originalArray[i] == originalArray[j]) {
//         isDuplicate = true;
//         break;
//       }
//     }
//     if (!isDuplicate) {
//       originalArray[uniqueElementsCount] = originalArray[i];
//       uniqueElementsCount++;
//     }
//   }

//   for (int i = 0; i < uniqueElementsCount; i++) {
//     print(originalArray[i]);
//   }
// }
