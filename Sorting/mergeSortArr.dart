void main(List<String> args) {
  List arr=[7,3,8,1,5,9,11,1,6];
  print(arr);
  
  print('------After Sorting------');
  print(mergeSort(arr));
}

List mergeSort(List arr) {
  if (arr.length <= 1) {
    return arr;
  }
  
  final int mid = (arr.length / 2).floor();
  final List left = arr.sublist(0, mid);
  final List right = arr.sublist(mid);
  
  return merge(mergeSort(left), mergeSort(right));
}

List merge(List left, List right) {
  final List result = [];
  int i = 0, j = 0;
  
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  
  return result;
}


// mergeSort(List arr,var lb,var ub){
//   if(lb<ub){
//     var mid=(lb+ub)~/2;
//     print(mid);
//     mergeSort(arr, lb, mid);
//     mergeSort(arr, mid+1, ub);
//     merge(arr, lb, mid, ub);
//     print(mid);
//   }
// }

// void merge(List arr,var lb,var mid,var ub){
//   var i=lb;
//   var j=mid+1;
//   //var k=lb;
//   List b=[];
//   while (i<=mid&&j<=ub) {
//     if (arr[i]<=arr[j] ){
//       b.add(arr[i]);
//       i++;
//     }
//     else{
//       b.add(arr[j]);
//       j++;
//     }
//     //k++;
   
//   }
  
//   while (j<=ub) {
//     b.add(arr[j]);
//     j++;
//     //k++;
//   }

//   while (i<=mid) {
//     b.add(arr[i]);
//     i++;
//     //k++;
//   }
  
//   for (var i = 0; i < arr.length; i++) {
//     arr[i]=b[i];
//   }

// }
