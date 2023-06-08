import 'dart:io';

void main(List<String> args) {
  Stack n = new Stack();
  print('Enter a number:');
  var number= int.parse(stdin.readLineSync()!);
  n.primeFactor(number);
  print('Prime factors are:');
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

  void primeFactor(var num){
    int i=2;
    while (num!=1) {
      while (num%i==0) {
        push(i);
        num=num/i;
      }
      i++;
    }
  }
}