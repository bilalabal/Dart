void main(List<String> args) {
  print({'name': 'Bilal', 'age': 23} + {'address': '123 Main St'});
  print({'name': 'Bilal', 'age': 23} - {'age': 23});
  print({'name': 'Bilal', 'age': 23} * 5);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
        ...this,
        ...other,
      };

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
