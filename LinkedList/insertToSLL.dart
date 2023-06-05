void main(List<String> args) {
  Node node= new Node();
  node.addNode(data: 10);
   node.addNode(data: 20);
   node.addNode(data: 30);
   node.addNode(data: 40);
   node.addNode(data: 50);
   node.addNode(data: 60);
   node.display();
   print('----------------------');
   //node.insertAfterData(key: 60, newData: 100);
    node.insertBeforeData(key: 10, newData: 100);
   node.display();
}

class Node {
  int? data;
  Node? next;
  Node? head=null;
  Node? tail=null;

  Node({this.data,this.next});
  
  void addNode({required int data,Node? next}){
    Node newNode= new Node(data: data);
    if (head==null) {
      head=newNode;
    }
    else{
      tail!.next=newNode;
    
    }
    tail=newNode;
  }

  void display(){
    Node? temp=head;
    while (temp!=null) {
      print(temp.data);
      temp=temp.next;
    }
  }

  void insertAfterData( {required int key,required int newData}){
    Node newNode=new Node(data: newData);
    Node? temp=head;
    while (temp!=null&&temp.data!=key) {
      temp=temp.next;
      
    }
    newNode.next=temp!.next;
    temp.next=newNode;
  }

  void insertBeforeData( {required int key,required int newData}){    
    Node newNode=new Node(data: newData);
    Node? temp=head;
    if (head!.data==key) {
      newNode.next=head;
      head=newNode;
      return;
    }
    while (temp!.next!=null && temp.next!.data!=key) {
      temp=temp.next;
      
    }
    newNode.next=temp.next;
    temp.next=newNode;
  }
  
}