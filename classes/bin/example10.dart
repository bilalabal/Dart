void main(List<String> args) {
  const car = Car();
  print(car.kind);
  car.accelarate();
  car.decelarate();
  const motorcycle = Motorcycle();
  print(motorcycle.kind);
  motorcycle.accelarate();
  motorcycle.decelarate();
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({
    required this.kind,
  });

  void accelarate() => print('$kind is accelerating');
  void decelarate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();
  @override
  void accelarate() => print('Motorcycle is accelarating');

  @override
  void decelarate() => print('Motorcycle is decelarating');
  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicycle,
}
