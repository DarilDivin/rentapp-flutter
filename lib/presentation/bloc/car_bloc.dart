import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentapp/presentation/bloc/car_event.dart';
import 'package:rentapp/presentation/bloc/car_state.dart';
import 'package:rentapp/domain/usecases/get_cars.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;
  CarBloc({required this.getCars}) : super(CarLoading()) {
    on<FetchCarsEvent>((event, emit) async {
      emit(CarLoading());
      try {
        final cars = await getCars.call();
        emit(CarLoaded(cars: cars));
      } catch (e) {
        emit(CarError(message: e.toString()));
      }
    });
  }
}