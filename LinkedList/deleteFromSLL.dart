void main(List<String> args) {
  Node n = Node();

  n.addNode(500);
  n.addNode(200);
  n.addNode(600);
  n.addNode(100);
  n.addNode(800);
  n.addNode(900);
  n.displayNode();
  print('----------------');
  n.deleteNode(100);
  n.displayNode();
}

class Node {
  Node({this.data});

  int? data;
  Node? head;
  Node? tail;
  Node? next;

  addNode(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = tail = newNode;
    }
    tail!.next = newNode;

    tail = newNode;
    tail!.next = null;
  }

  displayNode() {
    Node? temp = head;
    if (temp == null) {
      print('Empty!!');
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
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
        return;
      }
      temp = temp.next;
    }
  }
}