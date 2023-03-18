void main(List<String> args) {
  final bilalAbdul = Person(name: 'Bilal Abdullahi');
  final fatiAbdul = Person(name: 'Fatima Abdullahi');
  final abdulFamily = WrongImplementationOfFamily(
    members: [bilalAbdul, fatiAbdul],
  );
  print(abdulFamily);
  print(abdulFamily.membersCount);

  final bushiraUmar = Person(name: 'Bushira Umar');
  final aishaUmar = Person(name: 'Aisha Umar');
  final UmarFamily = RightImplementationOfFamily(
    members: [bushiraUmar, aishaUmar],
  );
  print(UmarFamily);
  print(UmarFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }
  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});
  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
