import 'dart:io';

void main(List<String> args) {
  Stack n = new Stack();
  print('Enter a number:');
  var number= int.parse(stdin.readLineSync()!);
  n.conversion(number);
  print('Equivalent binary is:');
  n.display();
}
class Stack {
  int? data;
  Stack? next;
  Stack? top;
  Stack({this.data});

  void push(var data){
    Stack newNode = new Stack(data: data);
    if (top==null) {
      top=newNode;
    }
    else{
      newNode.next=top;
      top=newNode;
    }
  }

  void display(){
    Stack? temp = top;
    if (temp==null) {
      print('Empty!!!');
    }
    while (temp!=null) {
      print(temp.data);
      temp=temp.next;
    }
  }

  void conversion(var num){
    while (num>0) {
      push(num%2);
      num=num~/2;
    }
  }
}