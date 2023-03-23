void main(List<String> args) {
  for (final name in getNames()) {
    // iterating over the elements of the Iterable returned by `getNames()`
    print(name); // printing each element
  }
}

Iterable<String> getNames() sync* {
  // a synchronous generator function that returns an Iterable of String objects
  print('Producing Bob'); // printing a message
  yield 'Bob'; // returning the value 'Bob' and suspending execution until the next iteration
  print('Producing Alice'); // printing a message
  yield 'Alice'; // returning the value 'Alice' and suspending execution until the next iteration
  print('Producing Joe'); // printing a message
  yield 'Joe'; // returning the value 'Joe' and suspending execution until the next iteration
  print('Producing templates names'); // printing a message
  yield* templatesNames(); // delegating to the `templatesNames` generator and suspending execution until it completes
}

Iterable<String> templatesNames() sync* {
  // a synchronous generator function that returns an Iterable of String objects
  print('Producing Foo'); // printing a message
  yield 'Foo'; // returning the value 'Foo' and suspending execution until the next iteration
  print('Producing Bar'); // printing a message
  yield 'Bar'; // returning the value 'Bar' and suspending execution until the next iteration
  print('Producing Baz'); // printing a message
  yield 'Baz'; // returning the value 'Baz' and suspending execution until the next iteration
}
