import 'dart:collection';

void main(List<String> args) {
  final person1 = {
    'age': 23,
    'name': 'Bilal',
  };

  final info2 = UnmodifiableMapView(person1);

  person1.addAll(
    {
      'phone': '123-456-7890',
    },
  );
  print(info2);

  try {
    info2.addAll(
      {
        'phone': '123-456-7890',
      },
    );
  } catch (e) {
    print(e);
  }
}
