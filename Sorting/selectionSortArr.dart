void main(List<String> args) {
  List arr=[12,3,8,1,5,9,11,1,6];
  print(arr);
  selectionSort(arr);
  print('------After Sorting------');
  print(arr);
}

selectionSort(List arr){
  for (var i = 0; i < arr.length-1; i++) {
    int min=i;
    for (var j = i+1; j < arr.length; j++) {
      if (arr[j]<arr[min]) {
        min=j;
      }
    }
    if (min!=i) {
      var temp=arr[min];
        arr[min]=arr[i];
        arr[i]=temp;
    }
  }
}