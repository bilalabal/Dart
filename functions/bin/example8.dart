void main(List<String> args) {
  doSomethingWith(name: 'Bilal');
}

void doSomethingWith({
  required String? name,
}) {
  print('Hello, $name');
}
