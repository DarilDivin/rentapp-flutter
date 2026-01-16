import 'package:rentapp/data/datasources/firebase_car_data_source.dart';
import 'package:rentapp/data/models/car.dart';
import 'package:rentapp/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource firebaseCarDataSource;

  CarRepositoryImpl({required this.firebaseCarDataSource});

  @override
  Future<List<Car>> fetchCars() async {
    return await firebaseCarDataSource.getCars();
  }
}