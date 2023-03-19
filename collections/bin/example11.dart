void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing Alice');
  yield 'Alice';
  print('Producing Joe');
  yield 'Joe';
  print('Producing templates names');
  yield* templatesNames();
}

Iterable<String> templatesNames() sync* {
  print('Producing Foo');
  yield 'Foo';
  print('Producing Bar');
  yield 'Bar';
  print('Producing Baz');
  yield 'Baz';
}
