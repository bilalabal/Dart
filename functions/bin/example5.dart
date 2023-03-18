void main(List<String> args) {
  sayHelloTo(name: 'World');
  sayHelloTo(name: null);
}

void sayHelloTo({String? name}) {
  print('Hello, $name!');
}
