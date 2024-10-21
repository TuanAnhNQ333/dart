enum VehicleCategory { Public, Private }

abstract class Vehicle {
  String _name;
  double _speed;
  VehicleCategory _category;

  Vehicle(this._name, this._speed, this._category);

  String get name => _name;

  double get speed => _speed;
  void setSpeed(double speed) {
    if (speed >= 0) {
      _speed = speed;
    }
  }

  VehicleCategory get category => _category;

  String getDetails();
}

class Car extends Vehicle {
  int numberOfSeats;

  /**TODO: Implement constructor of car**/
  Car(String name, double speed, VehicleCategory category, this.numberOfSeats)
      : super(name, speed, category);
  @override
  String getDetails() {
    /**TODO: Implement this function**/
    return 'car: $name, Speed: $speed km/h, Category: $category, Seats: $numberOfSeats';
  }
}

class Bus extends Vehicle {
  int capacity;

  /**TODO: Implement constructor of bus**/
  Bus(String name, double speed, VehicleCategory category, this.capacity)
      : super(name, speed, category);
  @override
  String getDetails() {
    /**TODO: Implement this function**/
    return 'Bus: $name, Speed: $speed km/h, Category: $category, Capacity: $capacity';
  }
}

// Factory
class VehicleFactory {
  static Vehicle createVehicle({
    required String type,
    required String name,
    required double speed,
    required VehicleCategory category,
    required dynamic extra, //Extra information
  }) {
    switch (type.toLowerCase()) {
      case 'car':
        return Car(name, speed, category, extra as int);
      case 'bus':
        return Bus(name, speed, category, extra as int);
      default:
        throw ArgumentError('Invalid vehicles');
    }
  }
}

void main() {
  List<Vehicle> vehicles = [
    VehicleFactory.createVehicle(
      type: 'car',
      name: 'Toyota',
      speed: 120,
      category: VehicleCategory.Private,
      extra: 5,
    ),
    VehicleFactory.createVehicle(
      type: 'bus',
      name: 'Vinfast',
      speed: 80,
      category: VehicleCategory.Public,
      extra: 50,
    ),
  ];

  // In chi tiết của từng phương tiện
  for (var vehicle in vehicles) {
    print(vehicle.getDetails());
    print('---');
  }
}
