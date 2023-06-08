void main(List<String> args) {
  Queue n=new Queue();
  Queue n1=new Queue();


  n.enQueue(3);
  n.enQueue(6);
  n.enQueue(4);
  n.enQueue(9);
  n.enQueue(8);
  n.enQueue(10);

  // n1.enQueue(13);
  // n1.enQueue(16);
  // n1.enQueue(14);
  // n1.enQueue(19);
  // n1.enQueue(18);
  // n1.enQueue(100);

  n.display();
  n.deQueue();
  print("---------");
   n.display();
  // n1.display();
}


class Queue{
  int? data;
  Queue? next;
  Queue? front;
  Queue? rear;

Queue({this.data});


enQueue(int data){
    Queue newNode = new Queue(data: data);
    if(front==null){
      front=newNode;
      rear = newNode;
    }
    else{
      rear!.next = newNode;
      rear = newNode;
    }
  }
  
display(){
     Queue? temp = front;
     if(temp==null){
      print('Empty!!!');
     }
     while(temp !=null){
      print(temp.data);
      temp=temp.next;
     }
}

deQueue(){
  if(front==null){
    print('Emptyyyy!!!');
  }
  front=front!.next;
}


}
  