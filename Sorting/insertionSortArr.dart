void main(List<String> args) {
  List arr=[12,3,8,1,5,9,11,1,6];
  print(arr);
  insertionSort(arr);
  print('------After Sorting------');
  print(arr);
}

insertionSort(List arr){
  for (var i = 1; i < arr.length; i++) {
    int temp=arr[i];
    var j=i-1;
    while (j>=0&&arr[j]>temp) {
      arr[j+1]=arr[j];
      j--;
    }
    arr[j+1]=temp;
  }
}