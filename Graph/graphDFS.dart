
class Graph {
  int vertices;
  //late List <List<int>> adjacencyList;
  late Map<int, List<int>> adjacencyList;
  Graph(this.vertices) {
    //adjacencyList=List.generate(vertices, (index) => []);
    adjacencyList = Map.fromIterable(List.generate(vertices, (index) => index),
        key: (vertex) => vertex, value: (vertex) => []);
  }

  void addEdge(int v1, int v2) {
    adjacencyList[v1]!.add(v2);
    adjacencyList[v2]!.add(v1);
  }

  void dfsTraversal(int start) {
    List<bool> visited = List<bool>.filled(vertices, false);
    dfsHelper(start, visited);
  }

  void dfsHelper(int vertex, List<bool> visited) {
    visited[vertex] = true;
    print(vertex);
    for (int adjacentVertex in adjacencyList[vertex]!) {
        if (!visited[adjacentVertex]) {
          dfsHelper(adjacentVertex, visited);
        }
      
  }
}

  void display(){
    adjacencyList.forEach((key, value) {
      print('$key=>${value.join(' ')}');
    });
  }
}


void main() {
  Graph graph = Graph(6);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 5);
  graph.addEdge(2, 3);
  graph.addEdge(3, 3);
  graph.addEdge(4, 0);
  graph.addEdge(5, 3);
  graph.addEdge(5, 4);

  graph.display();
  print('DFS Traversal:');
  graph.dfsTraversal(2);
}


// import 'dart:collection';

// class Graph {
//   int vertices;
//   late Map<int,List<int>> adjacencyList;

//   Graph(this.vertices){
//     adjacencyList=Map.fromIterable(List.generate(vertices, (index) => []));
//   }

//   void addEdge(int v1,int v2){
//     adjacencyList[v1]!.add(v2);
//     adjacencyList[v2]!.add(v1);
//   }

//   void dfsTraversal(int start){
//     List<bool> visited= List.filled(vertices, false);
//     //Stack<int> stack = Stack<int>();
//     Stack stack = Stack();
//     stack.push(start);
//     visited[start]=true;
//     while (stack.isNotEmpty) {
//       int curVertex = stack.pop();
//       print(curVertex);
//       for (var adjacentVertex in adjacencyList[curVertex]!) {
//         if (!visited[adjacentVertex]) {
//           visited[adjacentVertex]=true;
//           stack.push(adjacentVertex);
//         }
//       }
      
//     }
//   }

//   void display(){
//     adjacencyList.forEach((key, value) {
//       print('$key => ${value.join(' ')}');
//     });
//   }
// }

// void main(List<String> args) {
//   Graph graph = Graph(6);
//   graph.addEdge(0, 1);
//   graph.addEdge(0, 2);
//   graph.addEdge(0, 3);
//   graph.addEdge(1, 2);
//   graph.addEdge(1, 4);
//   graph.addEdge(2, 5);
//   graph.addEdge(3, 4);
//   graph.addEdge(4, 5);

//   graph.display();
//   print('DFS Traversal');
//   graph.dfsTraversal(2);
// }


