void main(List<String> args) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getUserName() async => 'Bilal Abdullahi';
Future<String> getAddress() => Future.value('123 Main St');

Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 1),
      () => '123-456-789',
    );

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Kano';
}

Future<String> getCountry() async => 'Nigeria';

Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );
