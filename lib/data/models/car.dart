class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerDay;
  final String image;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerDay,
    required this.image,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'],
      distance: (map['distance'] as num).toDouble(),
      fuelCapacity: (map['fuelCapacity'] as num).toDouble(),
      pricePerDay: (map['pricePerDay'] as num).toDouble(),
      image: map['image'],
    );
  }
}
