class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word){
    for (var i = 0; i < word.length; i++) {
      populateSuffixTrie(word,i);
    }
  }
  void populateSuffixTrie(String word,int index) {
    TrieNode current = root;
    for (int i = index; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        current.children[char] = TrieNode();
      }
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!current.children.containsKey(char)) {
        return false;
      }
      current = current.children[char]!;
    }
   return current.isEndOfWord;
  
  }

  List startsWith(String prefix) {
    TrieNode current = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!current.children.containsKey(char)) {
        return [];
      }
      current = current.children[char]!;
    }
    return getAllSuggestions(current,prefix);
  }

  List getAllSuggestions(TrieNode node,String prefix){
    List suggestion = [];
    if (node.isEndOfWord) {
      suggestion.add(prefix);
    }
    node.children.forEach((key, child) { 
      suggestion.addAll(getAllSuggestions(child, prefix+key));
    });
    return suggestion;
  }

  void displayAllStrings() {
    displayAllStringsHelper(root, "");
  }

  void displayAllStringsHelper(TrieNode node, String prefix) {
    if (node.isEndOfWord) {
      print(prefix);
    }
    node.children.forEach((key, value) {
      displayAllStringsHelper(value, prefix + key);
    });
  }
}


void main(List<String> args) {
  Trie trie = Trie();
  trie.insert('Ashish');
  trie.insert('Ashik');
   trie.insert('Ashwin');
  trie.insert('Ajay');
  trie.insert('Arun');
  trie.insert('Bean');
   trie.insert('Ben');
  trie.insert('Christo');
  trie.displayAllStrings();
  print(trie.search('ik'));
  print(trie.startsWith('B'));
}