void main(List<String> args) async {
  // final stream = getCharacters('Bilal Abdullahi');
  // await for (final character in stream) {
  //   print(character);
  // }

  await for (final character in getNames().asyncExpand(
    (name) => getCharacters(name),
  )) {
    print(character);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Bilal';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Abdullahi';
}
