void main(List<String> args) {
  print([1, 2, 3, 4, 5].sum); // prints 15
  print([2.3, 4.5, 6.7].sum); // prints 13.5
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
