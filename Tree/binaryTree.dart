class TreeNode {
  int? data;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.data);
}

class BinaryTree {
  TreeNode? root;

  BinaryTree(this.root);

  void traversePostOrder(TreeNode? node){
    if (node!=null) {
      traversePostOrder(node.left);
      traversePostOrder(node.right);
       print(node.data);
    }
  }

  // void traverseInOrder(TreeNode? node){
  //   if (node!=null) {
  //     traverseInOrder(node.left);
  //     print(node.data);
  //     traverseInOrder(node.right);
  //   }
  // }

  // void traversePreOrder(TreeNode? node){
  //   if (node!=null) {
  //     print(node.data);
  //     traversePreOrder(node.left);
  //     traversePreOrder(node.right);
  //   }
  // }

  
}

void main(List<String> args) {
  TreeNode node1 = TreeNode(1);
  TreeNode node2 = TreeNode(2);
  TreeNode node3 = TreeNode(3);
  TreeNode node4 = TreeNode(4);
  TreeNode node5 = TreeNode(5);
  TreeNode node6 = TreeNode(6);
  TreeNode node7 = TreeNode(7);
  TreeNode node8 = TreeNode(8);
  
  node1.left=node2;
  node1.right = node3;
  node2.left = node4;
  node2.right = node5;
  node3.right= node6;
  node5.right=node7;
  node6.left=node8;

  BinaryTree tree = BinaryTree(node1);
  // print('Inorder traversal');
  // tree.traverseInOrder(tree.root);
  // print('Preorder traversal');
  // tree.traversePreOrder(tree.root);
  print('Postorder traversal');
  tree.traversePostOrder(tree.root);
 
}