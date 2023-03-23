void main(List<String> args) {
  addToArrayWrong(); // calling the addToArrayWrong function
  print('-------------------------------');
  addToArrayRight(); // calling the addToArrayRight function
  print('-------------------------------');
  addToDictionaryWrong(); // calling the addToDictionaryWrong function
  print('-------------------------------');
  addToDictionaryRight(); // calling the addToDictionaryRight function
}

void addToArrayWrong() {
  final names1 = ['Foo1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo2', 'Bar2', 'Baz 2'];
  final allNamesWrong = names1; // creating a reference to the `names1` list
  allNamesWrong.addAll(names2); // adding all elements of `names2` to `names1`
  print(
      names1); // printing `names1` (which now includes elements from `names2`)
  print(names2); // printing `names2`
  print(
      allNamesWrong); // printing `allNamesWrong` (which is the same as `names1`)
}

void addToArrayRight() {
  final names1 = ['Foo1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo2', 'Bar2', 'Baz 2'];
  final allNamesRight = {
    ...names1,
    ...names2
  }; // creating a Set by spreading `names1` and `names2`
  final allNamesRightList = [
    ...names1,
    ...names2
  ]; // creating a List by spreading `names1` and `names2`
  print(names1); // printing `names1`
  print(names2); // printing `names2`
  print(allNamesRight); // printing `allNamesRight`
  print(allNamesRightList); // printing `allNamesRightList`
}

void addToDictionaryWrong() {
  const info = {
    // creating an immutable Map named `info`
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {...info}..addAll({
      'weight': 80
    }); // creating a new Map by spreading `info` and adding a new key-value pair
  print(result); // printing `result`
}

void addToDictionaryRight() {
  const info = {
    // creating an immutable Map named `info`
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {
    ...info,
    'weight': 80
  }; // creating a new Map by spreading `info` and adding a new key-value pair
  print(result); // printing `result`
}
