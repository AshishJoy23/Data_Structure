class HashTable {
  List<List<String>>? values;
  int? limit;
  HashTable(int size) {
    this.limit = size;
    values = List.generate(size, (index) => []);
  }

  int hashfunction(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = hash + key.codeUnitAt(i);
    }
    return hash % limit!;
  }

  void insert(String key, String value) {
    int index = hashfunction(key);
    values![index].add(value);
  }

  String retrieve(String key) {
    int index = hashfunction(key);
    return values![index].toString();
  }

  void display() {
    for (int i = 0; i < values!.length; i++) {
      if (values![i].isNotEmpty) {
        print("$i ${values![i]}");
      }
    }
  }
}

void main(List<String> args) {
  HashTable ht = HashTable(5);
  ht.insert("Apple", "A sweet red fruit");
  ht.insert("Banana", "A yellow curved fruit");
  ht.insert("Cherry", "A small red fruit");
  ht.insert("Name", "Ashish");
  print(ht.retrieve("Apple"));

  print(ht.retrieve("Name"));
  ht.display();
}