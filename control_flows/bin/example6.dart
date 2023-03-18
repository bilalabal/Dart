void main(List<String> args) {
  const info = {
    'name': 'Bilal',
    'age': 23,
    'height': 1.9,
    'isMarried': false,
    'address': {
      'street': 'Malafa',
      'city': 'Kano City',
      'country': 'Nigeria',
    }
  };

  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
