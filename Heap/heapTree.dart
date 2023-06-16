class MinHeap{
  List? heapList;

  MinHeap(){
    heapList=[];
  }
  
  bool get isEmpty => heapList!.isEmpty;

  void insert(int? value){
    heapList!.add(value);
    if (heapList!.length>1) {
       heapifyUp((heapList!.length)-1);
    }
   
  }

  heapifyUp(int index){
    int? parentIdx = (index-1)~/2;
    if (parentIdx>=0 && heapList![index]<heapList![parentIdx]) {
      swapData(index,parentIdx);
      heapifyUp(parentIdx);
    }
  }

  void swapData(int index,int parentIdx){
    int temp = heapList![index];
    heapList![index]=heapList![parentIdx];
    heapList![parentIdx]=temp;
  }

  int? remove(){
    int? min = heapList![0];
    var last = heapList!.removeLast();
    if (heapList!.isNotEmpty) {
      heapList![0] = last;
      heapifyDown(0);
    }
    
    return min;
  }

  heapifyDown(int index){
    int rightIdx = 2*index+1;
    int leftIdx = 2*index+2;
    int smallIdx = index;

    if (leftIdx<heapList!.length&&heapList![leftIdx]<heapList![smallIdx]) {
      smallIdx=leftIdx;
    }
    if (rightIdx<heapList!.length&&heapList![rightIdx]<heapList![smallIdx]) {
      smallIdx=rightIdx;
    }

    if (smallIdx!=index) {
      swapData(index, smallIdx);
      heapifyDown(smallIdx);
    }
  }
}

void main() {
  final minHeap = MinHeap();

  minHeap.insert(100);
  minHeap.insert(200);
  minHeap.insert(1);
  minHeap.insert(10);
  minHeap.insert(30);
  minHeap.insert(4);
  print(minHeap.heapList);

  while (!minHeap.isEmpty) {
    final min = minHeap.remove();
    print(min);
  }
  // print(minHeap.remove());
  print('After deletion');
  print(minHeap.heapList);
}