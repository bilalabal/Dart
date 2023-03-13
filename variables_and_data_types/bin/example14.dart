void main(List<String> args) {
  const theirNames = ['Aliya', 'Bala', 'Kabiru'];
  print(theirNames);

  // ignore: non_constant_identifier_names
  final Wow = 'wow';
  print(Wow);

  // ignore: constant_identifier_names
  const SomeName = 'Bilal';
  print(SomeName);
}
