void main(List<String> args) {
   Stack n = new Stack();
  n.push(3);
  n.push(6);
  n.push(2);
  n.push(10);
  n.push(1);

  n.display();
  print("------");
  n.sort();
  n.display();
  
}

class Stack{
  int? data;
  Stack? next;
  Stack? top;

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

  void display() {
    Stack? temp = top;
    if (temp == null) {
      print('Empty!!!!');
    } while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }


  void sort(){
    Stack? temp1=top;
    Stack? temp2;
    int? a;

    while(temp1 != null){
      temp2=temp1.next;

      while(temp2 != null){
        if(temp1.data! < temp2.data!){
          a=temp1.data;
          temp1.data=temp2.data;
          temp2.data=a;
        }
        temp2=temp2.next;
      }
      temp1 = temp1.next;

    }
  }
  

}