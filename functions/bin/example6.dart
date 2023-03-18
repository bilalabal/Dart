void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'hello, dart');
}

void describe({
  String? something = 'Hello, world!',
}) {
  print(something);
}
