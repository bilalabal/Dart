void main(List<String> args) {
  final abba = FamilyMember(name: 'Abba');
  final mama = FamilyMember(name: 'Mama');
  final family = abba + mama;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'Family member (name = $name)';
}

class Family {
  final List<FamilyMember> members;

  const Family({
    required this.members,
  });

  @override
  String toString() => 'Family member (name = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
