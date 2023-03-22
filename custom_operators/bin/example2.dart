void main(List<String> args) {
  const names = ['Fatima', 'Bilal', 'Ummi', 'Salma'];
  print(names * 12);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
      yield* this;
    }
  }
}
