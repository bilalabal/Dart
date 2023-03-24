void main(List<String> args) {
  Peacock(isTired: false).run();
  try {
    Peacock(isTired: true).run();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

class PeacockIsTiredException implements Exception {
  final String message;
  PeacockIsTiredException([this.message = 'Poor peackocky is tired']);
}

class Peacock {
  final bool isTired;

  const Peacock({
    required this.isTired,
  });

  void run() {
    if (isTired) {
      throw PeacockIsTiredException('Poor cocky is tired');
    } else {
      print('Peacock is running');
    }
  }
}
