import 'dart:io';

void main(List<String> args) {
  List array=[1,2,3,4,5];
  print(array);
  Node node = new Node();
  for (var i = 0; i < array.length; i++) {
    node.addNode(data: array[i]);
  }
  node.display();
  }

  class Node {
    int? data;
    Node? next;
    Node? head=null;
    Node? tail=null;
    Node({this.data,this.next});
      
    void addNode({required int data}){
      Node newNode = new Node(data: data);

      if(head==null){
        head=newNode;
      }
      else{
        tail!.next=newNode;
        

      }
      tail=newNode;

    }

    void display(){
      Node? temp=head;
      if(temp==null){
        print('Empty List');
        return;
      }
      while (temp!=null) {
        print(temp.data);
        temp=temp.next;
      }

    }
  }