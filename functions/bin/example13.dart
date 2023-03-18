void main(List<String> args) {
  describeFully('Bilal');
  describeFully('Bilal', lastName: null);
  describeFully('Bilal', lastName: 'Alhassan');
}

void describeFully(
  String firstName, {
  String? lastName = 'Abdullahi',
}) {
  print('Hello $firstName $lastName');
}
