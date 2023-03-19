void main(List<String> args) {
  addToArrayWrong();
  print('-------------------------------');
  addToArrayRight();
  print('-------------------------------');
  addToDictionaryWrong();
}

void addToArrayWrong() {
  final names1 = ['Foo1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo2', 'Bar2', 'Baz 2'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo2', 'Bar2', 'Baz 2'];
  final allNamesRight = {...names1, ...names2};
  final allNamesRightList = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
  print(allNamesRightList);
}

void addToDictionaryWrong() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {...info}..addAll({'weight': 80});
  print(result);
}
