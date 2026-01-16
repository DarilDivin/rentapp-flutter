import 'package:rentapp/data/models/car.dart';
import 'package:rentapp/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository carRepository;
  GetCars(this.carRepository);

  Future<List<Car>> call() async {
    return await carRepository.fetchCars();
  }
} 