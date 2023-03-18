void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (final name in names) {
    print(name);
  }

  print('_____________');

  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }

  print('_____________');

  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }

  print('_____________');

  for (final name in names.reversed) {
    print(name);
  }

  print('_____________');

  for (final value in Iterable.generate(20)) {
    print(value);
  }
}
