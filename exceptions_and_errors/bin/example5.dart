void main(List<String> args) {
  try {
    print('Peacock aged 11 is going to run...');
    Peacock(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }

  try {
    print('A tired Peacock is going to run...');
    Peacock(
      age: 2,
      isTired: true,
    ).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class PeacockIsTooOldException implements Exception {
  const PeacockIsTooOldException();
}

class PeacockIsTiredException implements Exception {
  const PeacockIsTiredException();
}

class Animal {
  final int age;

  const Animal({
    required this.age,
  });

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Peacock extends Animal {
  final bool isTired;

  const Peacock({
    required super.age,
    required this.isTired,
  });

  @Throws([PeacockIsTooOldException, PeacockIsTiredException])
  @override
  void run() {
    if (age > 10) {
      throw const PeacockIsTooOldException();
    } else if (isTired) {
      throw const PeacockIsTiredException();
    } else {
      print('Peacock is running');
    }
  }
}
