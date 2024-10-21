class VehicleA {
  String brand;
  int year;

  VehicleA(this.brand, this.year);

  void startEngine() {
    print('$brand engine started.');
  }

  void info() {
    print('Brand: $brand, Year: $year');
  }
}

abstract class VehicleB { // truu tuong : ghi de
// su khac biet giua abstract class va interface ; abstract class khong dung duoc static, con interface co the dung
// 
  String brand;
  int year;

  VehicleB(this.brand, this.year);

  void startEngine() {
    print('$brand engine started.');
  }

  void info() {
    print('Brand: $brand, Year: $year');
  }
}

class Car extends VehicleA { 
  int numberOfDoors;

  Car(String brand, int year, this.numberOfDoors) : super(brand, year);

  @override
  void info() {
    super.info();
    print('Number of Doors: $numberOfDoors');
  }
}

class ElectricCar extends Car {
  int batteryCapacity; // in kWh

  ElectricCar(String brand, int year, int numberOfDoors, this.batteryCapacity)
      : super(brand, year, numberOfDoors);

  @override
  void startEngine() {
    print('$brand electric engine started silently.');
  }

  void chargeBattery() {
    print('$brand is charging the battery to $batteryCapacity kWh.');
  }

  @override
  void info() {
    super.info();
    print('Battery Capacity: $batteryCapacity kWh');
  }
}

void main() {
 
  VehicleA genericVehicle = VehicleA('Generic Vehicle', 2020);
  genericVehicle.startEngine(); 
  genericVehicle.info();        

  print('---');

  
  Car myCar = Car('Toyota', 2021, 4);
  myCar.startEngine(); 
  myCar.info();        
                       
                       

  print('---');

  ElectricCar myElectricCar = ElectricCar('Tesla', 2022, 4, 100);
  myElectricCar.startEngine(); 
  myElectricCar.chargeBattery(); 
  myElectricCar.info();       
}
