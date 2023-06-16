heapSort(List? arr){
  int? n=arr!.length;
  for (var i = n~/2-1; i >= 0; i--) {
    heapify(arr,n,i);
  }

  for (var i = n-1; i >= 0; i--) {
    int temp = arr[0];
    arr[0]=arr[i];
    arr[i]=temp;
    heapify(arr,i,0);
  }
}

heapify(List arr,int n,int idx){
  int largest = idx;
  int lftChild = 2*idx+1;
  int rgtChild = 2*idx+2;

  if (lftChild<n && arr[lftChild]>arr[largest]) {
    largest=lftChild;
  }

  if (rgtChild<n && arr[rgtChild]>arr[largest]) {
    largest=rgtChild;
  }

  if (largest!=idx) {
    int temp = arr[idx];
    arr[idx]=arr[largest];
    arr[largest]=temp;
    heapify(arr, n, largest);
  }
}


void main(List<String> args) {
  List arr =[100,200,1,10,30,4];
  print(arr);
  print('After Sorting');
  heapSort(arr);
  print(arr);
}