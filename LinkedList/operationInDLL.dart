void main(List<String> args) {
  Node n = Node();

  n.addNode(8);
  n.addNode(5);
  n.addNode(6);
  n.addNode(7);
  n.addNode(5);
  n.display();
  print('-------------');
  n.deleteNode(5);
  n.display();
}

class Node {
  Node({this.data});

  int? data;
  Node? head;
  Node? tail;
  Node? prev;
  Node? next;

  addNode(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = tail = newNode;
    }
    tail!.next = newNode;
    newNode.prev = tail;
    tail = newNode;
    tail!.next = null;
  }

  display() {
    Node? temp = head;
    if (temp == null) {
      print('Empty!!!');
    }

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  deleteNode(int data) {
    int key = data;
    Node? temp = head;
    if (temp!.data == key && temp != null) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.next != null) {
      if (temp.next?.data == key) {
        temp.next = temp.next!.next;
        //return;
      }
      temp = temp.next;
    }
  }
}