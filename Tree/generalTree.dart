class TreeNode {
  int? data;
  List? children;

  TreeNode(this.data):children=[];

  void addChild(TreeNode node){
    children!.add(node);
  }
}

class Tree {
  TreeNode? root;

  Tree(this.root);

  void printTree(){
    printNode(root);
  }
}

void printNode(TreeNode? node){
  print(node!.data);
  if (node.children!.isNotEmpty) {
    node.children!.forEach((child) {
      printNode(child);
     });
  }
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

  node1.addChild(node2);
  node1.addChild(node3);
  node1.addChild(node4);
  node2.addChild(node5);
  node3.addChild(node6);
  node4.addChild(node7);
  node7.addChild(node8);

  Tree tree=Tree(node1);
  tree.printTree();

}