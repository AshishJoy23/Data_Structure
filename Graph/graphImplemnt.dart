class Graph {
  late Map<int,List<int>> adjacencyList;
  Graph(){
    adjacencyList={};
  }

  void addVertex(int v){
    adjacencyList[v]=[];
  }

  void addEdge(int v1,int v2){
    adjacencyList[v1]!.add(v2);
    adjacencyList[v2]!.add(v1);
  }

  void deleteVertex(int v){
    adjacencyList.remove(v);
    for (var list in adjacencyList.values) {
      list.removeWhere((element) => element==v);
    }
    // adjacencyList.forEach((key, value) {
    //   value.removeWhere((element) => element==v);
    // });
    
  }

  void display(){
    adjacencyList.forEach((key, value) {
      print('$key=>${value.join(' ')}');
    });
  }
}

void main(List<String> args) {
  Graph graph=Graph();
  graph.addVertex(0);
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);
  graph.addVertex(5);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(0, 3);
  graph.addEdge(1, 2);
  graph.addEdge(1, 4);
  graph.addEdge(2, 5);
  graph.addEdge(3, 4);
  graph.addEdge(4, 5);

  graph.display();
  graph.deleteVertex(2);
  print('After Deletion');
  graph.display();
  
}