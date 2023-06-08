void main(List<String> args) {
  List arr=[7,3,8,1,5,9,11,1,6];
  print(arr);
  quickSort(arr,0,arr.length-1);
  print('------After Sorting------');
  print(arr);
}


void quickSort(List list, int start, int end) {
  if (start < end) {
    int pivotIndex = partition(list, start, end);
    quickSort(list, start, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, end);
  }
}

int partition(List list, int start, int end) {
  int pivotValue = list[end];
  int pivotIndex = start;
  
  for (int i = start; i < end; i++) {
    if (list[i] < pivotValue) {
      int temp = list[i];
      list[i] = list[pivotIndex];
      list[pivotIndex] = temp;
      pivotIndex++;
    }
  }
  
  int temp = list[end];
  list[end] = list[pivotIndex];
  list[pivotIndex] = temp;
  
  return pivotIndex;
}



// quickSort(List arr,var lb,var ub){
//   if(lb<ub){
//     var index= partition(arr, lb, ub);
    
//     quickSort(arr, lb, index-1);
    
//     quickSort(arr, index+1, ub);
//     print('after');

//   }
// }

// int partition(List arr,int lb,int ub){
//   var pivot=arr[lb];
//   var start = lb;
//   var end =ub;
//   print('-----');
//   while (start<end) {
//     while (arr[start]<=pivot) {
//       start++;
//     }
//     while (arr[end]>pivot) {
//       end--;
//     }
//     if (start<end) {
//       var temp=arr[start];
//       arr[start]=arr[end];
//       arr[end]=temp;
//     }
//   }
//   var temp=arr[lb];
//   arr[lb]=arr[end];
//   arr[end]=temp;
//   //print(end);
//   return end;

// }
