void main(List<String> args) async {
  final allNames = await getNames().toList();
  print(allNames);
}

Stream<String> getNames() async* {
  yield 'Seth';
  yield 'Kathy';
  yield 'Lars';
}
