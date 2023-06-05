void main(List<String> args) {
  Node node=new Node();
  node.addNode(data: 10);
  node.addNode(data: 20);
  node.addNode(data: 30);
  node.addNode(data: 40);
  node.addNode(data: 50);
  node.display();
}


class Node {
  Node({this.data, this.next});
  int? data;
  Node? next;
  Node? head = null;
  Node? tail = null;

  void addNode({required int data,Node? next}){
    Node newNode = new Node(data: data);
    print('Node added');
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
}
