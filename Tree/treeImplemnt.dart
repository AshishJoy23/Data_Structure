import 'dart:io';

class Tree{
  String? data;
  Tree? left;
  Tree? right;

  Tree({this.data});


  Tree? create(){
    print('Enter the value or Enter -1 for no node');
    var val = stdin.readLineSync()!;
    if (val=='-1') {
      return null;
    }
    Tree? newNode= Tree(data: val);
    print('Enter left child of ${newNode.data}');
    newNode.left=create();
    print('Enter right child of ${newNode.data}');
    newNode.right=create();
    return newNode;
  }

  void display(Tree? node) {
    if (node != null) {
    display(node.left);
    print(node.data);
    display(node.right);
    }
  }

}

void main(List<String> args) {
  Tree? root;
  Tree? tree = new Tree();
  root = tree.create();
  tree.display(root);
}