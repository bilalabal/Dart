void main(List<String> args) {
  // Using collection if to generate a set of all characters in the string "abracadabra" except for "a", "b", and "c"
  var allExceptAbc = {
    for (final char in 'abracadabra'.split(''))
      'abc'.contains(char)
          ? null
          : char // Use ternary operator to exclude characters that match "a", "b", and "c"
  }
    ..removeAll([null]) // Remove all null values
    ..cast<String>(); // Cast the set to a set of strings
  print(allExceptAbc);
  print('-----------------------------');

  // Generating lists of even and odd numbers using a for loop and a functional approach
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number // Only add even numbers to the list
  ];
  final evenNumbersFunctional = allNumbers.where(
    (number) => number % 2 == 0,
  );

  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number // Only add odd numbers to the list
  ];
  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );
  print(allNumbers);
  print('-----------------------------------');
  print(evenNumbers);
  print('-----------------------------------');
  print(evenNumbersFunctional);
  print('-----------------------------------');
  print(oddNumbers);
  print('-----------------------------------');
  print(oddNumbersFunctional);
  print('-----------------------------------');

  // Generating a map of names and their lengths
  final names = [
    'Bilal Abdullahi',
    'Hashim Aliyu',
    'Abubakar Sadik',
  ];
  final namesAndLengths = {
    for (final name in names) name: name.length,
  };
  print(namesAndLengths);
}
