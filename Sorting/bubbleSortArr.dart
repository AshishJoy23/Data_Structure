void main(List<String> args) {
  List arr=[12,3,8,1,5,9,11,1,6];
  print(arr);
  bubbleSort(arr);
  print('------After Sorting------');
  print(arr);
}

bubbleSort(List arr){
  for (var i = 0; i < arr.length-1; i++) {
    for (var j = 0; j < arr.length-1-i; j++) {
      if (arr[j]>arr[j+1]) {
        var temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
}