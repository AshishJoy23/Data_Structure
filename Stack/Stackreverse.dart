void main(List<String> args) {
  Stack n = new Stack();

 String str="ASHISH";
 for (var i = str.length-1; i >=0; i--) {
   n.push(str[i]);
 }
  // n.push("R");
  // n.push("E");
  // n.push("E");
  // n.push("J");
  // n.push("A");

  n.display();
  n.reverse();
  print("------");
  n.display();
}

class Stack {
  String? data;
  Stack? next;
  Stack? top;
  Stack? newNode;

  Stack({this.data});

  void push(var data) {
    Stack newNode = new Stack(data: data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  display() {
    Stack? temp = top;
    if (temp == null) {
      print('Empty!!!!');
    } while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }

  reverse() {
    Stack? prevNode = null;
    Stack? currNode = top;
    Stack? nextNode = null;
    while (currNode != null) {
      nextNode = currNode.next;
      currNode.next = prevNode;
      prevNode = currNode;
      currNode = nextNode;
    }
    top = prevNode;
  }
}
