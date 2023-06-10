class TreeNode {
  int? data;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.data);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value){
    TreeNode? newNode = TreeNode(value);
    if (root==null) {
      root=newNode;
    }else{
      insertNode(root,newNode);
    }
  }

  void insertNode(TreeNode? node,TreeNode? newNode){
    if (newNode!.data!<node!.data!) {
      if (node.left==null) {
        node.left=newNode;
      }
      else{
        insertNode(node.left, newNode);
      }
    }else{
      if (node.right==null) {
        node.right=newNode;
      } else {
        insertNode(node.right, newNode);
      }
    }
  }

  bool contains(TreeNode? node, int? key){
    if (node==null) {
      return false;
    }
    else if(key!<node.data!){
      return contains(node.left,key);
    }
    else if(key>node.data!){
      return contains(node.right, key);
    }
    else{
      return true;
    }
  }

  TreeNode? getMinNode(TreeNode? node){
    if (node!.left==null) {
      //print('Minimum value in the tree ${node.data}');
      return node;
    } else {
      return getMinNode(node.left);
    }
  }

  void getMaxNode(TreeNode? node){
    if (node!.right==null) {
       print('Maximum value in the tree ${node.data}');
    } else {
      getMaxNode(node.right);
    }
  }

  void remove(int? value){
    root = removeNode(root, value);
  }

  TreeNode? removeNode(TreeNode? node,int? value){
    if (node==null) {
      return null;
    }
    if (node.data==value) {
      if (node.left==null&&node.right==null) {
        return null;
      }else if(node.left==null){
        return node.right;
      }else if(node.right==null){
        return node.left;
      }else{
        TreeNode? tempNode = getMinNode(node.right);
        node.data=tempNode!.data;
        node.right= removeNode(node.right, tempNode.data);
        return node;
      }
    }else if(value!<node.data!){
      node.left=removeNode(node.left, value);
      return node;
    }else{
      node.right=removeNode(node.right, value);
      return node;
    }
  }

  int? closestValue(TreeNode? node,int target){
    int? closest = node!.data;

    while (node!=null) {
      if ((target-node.data!).abs()<(target-closest!).abs()) {
        closest=node.data;
      }

      if(target<node.data!){
        node=node.left;
      }
      else if(target>node.data!){
        node=node.right;
      }
      else{
        break;
      }
    }
    return closest;
  }

  bool isBST(TreeNode? node){
    List inOrderList =[];
    traverseInOrder(TreeNode? node){
      if (node!=null) {
        traverseInOrder(node.left);
        inOrderList.add(node.data);
        traverseInOrder(node.right);
      }
    }
    traverseInOrder(node);
    for (var i = 1; i < inOrderList.length; i++) {
      if(inOrderList[i]<inOrderList[i-1]){
          return false;
      }
    }
    
    return true;
  }

  void displayTree(TreeNode? node){
    if (node!=null) {
      print(node.data);
      displayTree(node.left);
      displayTree(node.right);
    }
  }
}

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(9); 
  bst.insert(18);
  bst.insert(16);
  bst.insert(11); 
  bst.displayTree(bst.root);

   bst.remove(9);
  print('After deletion');
  bst.displayTree(bst.root);
  print('--------------------');
  //print(bst.closestValue(bst.root, 10));

  // print('Is the given tree is BST:${bst.isBST(bst.root)}');

  // print(bst.getMinNode(bst.root)!.data);
  // bst.getMaxNode(bst.root);

  // print('${bst.contains(bst.root, 22)}');
  // print('${bst.contains(bst.root, 9)}');
}