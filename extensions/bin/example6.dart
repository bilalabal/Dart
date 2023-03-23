void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCasseLetters);
  print(AnimalType.dog.nameContainsUpperCasseLetters);
  print(AnimalType.goldFish.nameContainsUpperCasseLetters);
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCasseLetters => name.contains(
        RegExp(
          r'[A-Z]',
        ),
      );
}
