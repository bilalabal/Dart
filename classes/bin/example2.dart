void main(List<String> args) {
  const me = Person('Bilal', 23);
  print(me.name);
  print(me.age);
  print('-----------------------');
  const foo = Person.foo();
  print(foo.name);
  print(foo.age);
  print('-----------------------');

  const bar = Person.bar(27);
  print(bar.name);
  print(bar.age);
  print('-----------------------');

  const baz = Person.other();
  print(baz.name);
  print(baz.age);
  print('-----------------------');

  const bilal = Person.other(name: 'Bilal');
  print(bilal.name);
  print(bilal.age);
  print('-----------------------');

  const jill = Person.other(name: 'Jill', age: 40);
  print(jill.name);
  print(jill.age);
  print('-----------------------');
}

class Person {
  final String name;
  final int age;
  const Person(
    this.name,
    this.age,
  );

  const Person.foo()
      : name = 'Foo',
        age = 20;

  const Person.bar(
    this.age,
  ) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 30;
}
