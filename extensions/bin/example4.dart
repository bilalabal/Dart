void main(List<String> args) {
  print([1, 2, 3, 4, 5].containsDuplicates); // prints false
  print([1, 2, 3, 4, 5, 1].containsDuplicates);
  print(['Foo', 'Bar'].containsDuplicates);
  print(['Foo', 'Bar', 'foo'].containsDuplicates); // prints true
}

extension on Iterable {
  bool get containsDuplicates => toSet().length != length;
}
