import 'dart:collection';

class TreeNode {
  int? data;
  TreeNode? left;
  TreeNode? right;
   
  TreeNode(this.data);
}

class Tree {
  TreeNode? root;
  
  Tree(this.root);

  bool isCompleteBTree(TreeNode? node){
    if (node==null) {
      return true;
    }
    bool reachEnd=false;
    Queue queue = Queue();
    queue.add(node);

    while (queue.isNotEmpty) {
      TreeNode currentNode = queue.removeFirst();
      if (currentNode.left!=null) {
        if (reachEnd) {
          return false;
        }
        queue.add(currentNode.left);
      }else{
        reachEnd=true;
      }
      if (currentNode.right!=null) {
        if (reachEnd) {
          return false;
        }
        queue.add(currentNode.right);
      }else{
        reachEnd=true;
      }
    }
    return true;
  }

  bool isFullBTree(TreeNode? node){
    if (node==null) {
      return true;
    }
    if (node.left==null&&node.right==null) {
      return true;
    }
    if (node.left!=null&&node.right!=null) {
      return isFullBTree(node.left)&&isFullBTree(node.right);
    }
    return false;
  }
}

void main() {
  var node1 = TreeNode(1);
  var node2 = TreeNode(2);
  var node3 = TreeNode(3);
  var node4 = TreeNode(4);
  var node5 = TreeNode(5);
  var node6 = TreeNode(6);
  var node7 = TreeNode(7);

  node1.left = node2;
  node1.right = node3;
  node2.left = node4;
  node2.right = node5;
  // node3.left = node6;
  //node3.right = node7;
  node4.left=node6;
  node4.right=node7;


  Tree tree = Tree(node1);

  print('Is complete binary tree? ${tree.isCompleteBTree(tree.root)}');
  print('Is full binary tree? ${tree.isFullBTree(tree.root)}');
}