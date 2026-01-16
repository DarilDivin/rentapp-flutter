import 'package:rentapp/data/models/car.dart';

abstract class CarState {}

class CarInitial extends CarState {}

class CarLoading extends CarState {}

class CarLoaded extends CarState {
  final List<Car> cars;

  CarLoaded({required this.cars});
}

class CarError extends CarState {
  final String message;

  CarError({required this.message});
}
