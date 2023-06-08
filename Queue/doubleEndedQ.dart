void main(List<String> args) {
  Queue n = new Queue();
  n.enQueueRear(13);
  n.enQueueRear(19);
  n.enQueueRear(6);
  n.enQueueRear(25);
  n.enQueueRear(60);
  n.enQueueRear(14);
  n.display();
  n.enQueueFront(33);
  print('After adding in front');
  n.display();
  n.deQueueFront();
  print('Delete from front');
  n.display();
  n.deQueueRear();
  print('Delete from last');
  n.display();
}

class Queue {
  int? data;
  Queue? next;
  Queue? prev;
  Queue? front;
  Queue? rear;

  Queue({this.data});

  void enQueueFront(int data){
    Queue newNode= new Queue(data: data);
    if (front==null) {
      front=rear=newNode;
    }
    else{
      newNode.next=front;
      front!.prev=newNode;
      front=newNode;
    }
  }

  void enQueueRear(int data){
    Queue newNode= new Queue(data: data);
    if (front==null) {
      front=rear=newNode;
    }
    else{
      rear!.next=newNode;
      newNode.prev=rear;
      rear=newNode;
    }
  }

  void deQueueFront(){
    if (front==null) {
      print('Empty!!');
    }
    else{
      front=front!.next;
      front!.prev=null;
    }
  }

  void deQueueRear(){
    if (front==null) {
      print('Empty!!');
    }
    else{
      rear=rear!.prev;
      rear!.next=null;
    }
  }

  void display(){
    Queue? temp= front;
    if (temp==null) {
      print('Empty!!!');
    }
    while (temp!=null) {
      print(temp.data);
      temp=temp.next;
    }
  }
}