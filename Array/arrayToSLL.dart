void main(List<String> args) {
  List arr = [20, 15, 23, 45, 100];
  print(arr);
  Node node = new Node();
  for (int i = 0; i < arr.length; i++) {
    node.addNode(data: arr[i]);
  }
  node.display();
}

class Node {
  Node({this.data, this.next});

  int? data;
  Node? next;
  Node? head = null;
  Node? tail = null;

  void addNode({required int data, Node? next}) {
    Node newNode = Node(data: data);
    print('node added');
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
