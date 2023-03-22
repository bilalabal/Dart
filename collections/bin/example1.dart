void main(List<String> args) {
  const names = ['Fatima', 'Bilal', 'Ummi', 'Salma'];

  for (final name in names) {
    print(name);
  }

  print('---------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('---------------------');

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print('---------------------');

  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  print('---------------------');

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  // print(names[4]);

  // try {
  //   print(names[4]);
  // } catch (e) {
  //   print(e);
  // }

  print('---------------------');

  names.sublist(1).forEach(print);

  print('---------------------');

  names.sublist(1, 3).forEach(print);

  print('---------------------');

  names.sublist(2, 3).forEach(print);

  print('---------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(23);
  print(ages);

  print('---------------------');

  const names1 = ['Fatima', 'bilal', 'Ummi', 'Salma'];
  const names2 = ['Fatima', 'Bilal', 'Ummi', 'Salma'];
  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }

  print('---------------------');

  names.map((str) => str.toUpperCase()).forEach(print);

  print('---------------------');

  names.map((str) => str.length).forEach(print);

  print('---------------------');

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      int thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);

  print('---------------------');

  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);
  print('---------------------');

  // The `fold` method is being called on the `names` iterable.
// It will iterate over each element in `names`, accumulating a result
// as it goes.
  final result = names.fold(
    // The initial value of the accumulator is an empty string.
    '',

    // This is the function that will be applied to each element in `names`.
    // It takes two arguments: the current accumulator value (result) and
    // the current element (str).
    (result, str) =>

        // The current element is converted to uppercase and added to the
        // accumulator (result), separated by a space.
        '$result ${str.toUpperCase()}',
  );

// The final result is a string that contains all the elements of `names`
// in uppercase, separated by spaces.

  print(result);
  print('---------------------');
}
