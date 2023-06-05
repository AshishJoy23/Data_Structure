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
   node.reverse();
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

  void reverse(){
    Node? currentNode=head;
    Node? nextNode=head;
    Node? prevNode=null;
    while (nextNode!=null) {
      nextNode=nextNode.next;
      currentNode?.next=prevNode;
      prevNode=currentNode;
      currentNode=nextNode;
    }
    head=prevNode;
  }
}