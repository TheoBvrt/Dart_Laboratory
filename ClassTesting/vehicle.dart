class Vehicle {
  String make;
  String model;
  String year;
  String fuel;

  Vehicle ({required this.make, required this.model, required this.year, required this.fuel});

  void accelerate(double speed){
    print("le vehicule accelelere jusqu'a $speed km/h");
  }

  void brake () {
    print ("le vehicule freine");
  }
}

class Car extends Vehicle {
  int numDoors;
  bool isConvertible;

  Car (String make, String model, String year, String fuel, this.numDoors, this.isConvertible) : 
    super (make: make, model: model, year: year, fuel: fuel);
  
  @override 
  void accelerate(double speed) {
    print("la voiture de $numDoors accelelere jusqu'a $speed km/h");
  }
}

class MotorCycle extends Vehicle {
  bool hasSidecar;

  MotorCycle (String make, String model, String year, String fuel, this.hasSidecar) :
    super (make: make, model: model, year: year, fuel: fuel);

  @override
  void brake() {
    print ("La moto freine");
  }
}