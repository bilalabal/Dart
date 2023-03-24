void main(List<String> args) async {
  final name3Times = getNames().asyncExpand(
    (name) => times3(name),
  );
  await for (final name in name3Times) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'Bob';
  yield 'Alice';
  yield 'Joe';
}

Stream<String> times3(String value) => Stream.fromIterable(
      Iterable.generate(
        3,
        (_) => value,
      ),
    );
