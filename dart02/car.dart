// 暗号：你好Dart
abstract class Vehicle {
  int wheels = 22;
  void getWheelsNum();
}

class Car extends Vehicle {
  @override
  void getWheelsNum() {
    print(wheels);
  }
}

main() {
  Car c = new Car();
  c.getWheelsNum();
}
