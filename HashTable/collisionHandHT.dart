void main(List<String> args) {
  HashTable ht = HashTable(5);
  ht.set("Apple", "A sweet red fruit");
  ht.set("Banana", "A yellow curved fruit");
  ht.set("Cherry", "A small red fruit");
  ht.set("Name", "Ashish");
  print(ht.get("Apple"));

  print(ht.get("Name"));

  ht.display();
}

class HashTable {
  late List<List<List<dynamic>>> table;
  int size;

  HashTable(this.size) {
    table = List.generate(size, (index) => []);
  }

  int hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  void set(String key, dynamic value) {
    int index = hash(key);
    List<List<dynamic>> bucket = table[index];
    if (bucket.isEmpty) {
      table[index] = [[key, value]];
    } else {
      bool found = false;
      for (int i = 0; i < bucket.length; i++) {
        if (bucket[i][0] == key) {
          bucket[i][1] = value;
          found = true;
          break;
        }
      }
      if (!found) {
        bucket.add([key, value]);
      }
    }
  }

  dynamic get(String key) {
    int index = hash(key);
    List<List<dynamic>> bucket = table[index];
    if (bucket.isNotEmpty) {
      for (int i = 0; i < bucket.length; i++) {
        if (bucket[i][0] == key) {
          return bucket[i][1];
        }
      }
    }
    return null;
  }

  void remove(String key) {
    int index = hash(key);
    List<List<dynamic>> bucket = table[index];
    if (bucket.isNotEmpty) {
      for (int i = 0; i < bucket.length; i++) {
        if (bucket[i][0] == key) {
          bucket.removeAt(i);
          break;
        }
      }
    }
  }

  void display() {
    for (int i = 0; i < table.length; i++) {
      if (table[i].isNotEmpty) {
        print("$i ${table[i]}");
      }
    }
  }
}
