import 'dart:collection';

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

  void bfsTraversal(int start) {
    List<bool> visited = List.filled(vertices, false);
    Queue<int> queue = Queue<int>();
    visited[start] = true;
    queue.add(start);
    while (queue.isNotEmpty) {
      int curVertex = queue.removeFirst();
      print(curVertex);
      for (int adjacentVertex in adjacencyList[curVertex]!) {
        if (!visited[adjacentVertex]) {
          visited[adjacentVertex] = true;
          queue.add(adjacentVertex);
        }
      }
    }
  }

  void display() {
    adjacencyList.forEach((key, value) {
      print('$key=>${value.join(' ')}');
    });
  }
}

void main(List<String> args) {
  Graph graph = Graph(6);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(0, 3);
  graph.addEdge(1, 2);
  graph.addEdge(1, 4);
  graph.addEdge(2, 5);
  graph.addEdge(3, 4);
  graph.addEdge(4, 5);

  graph.display();
  print('BFS Traversal');
  graph.bfsTraversal(2);
}
