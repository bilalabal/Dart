void main(List<String> args) {
  makeUpperCase();
  makeUpperCase(null, 'foo');
  makeUpperCase('Bilal');
}

void makeUpperCase([
  String? name,
  String lastName = 'Bar',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
